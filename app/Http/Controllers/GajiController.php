<?php

namespace App\Http\Controllers;

use Log;
use App\Models\Gaji;
use App\Models\Worker;
// use setasign\Fpdi\Fpdi;
use setasign\Fpdi\Tcpdf\Fpdi;
use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\Settings;
use Illuminate\Http\Request;
use Smalot\PdfParser\Parser;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreGajiRequest;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\UpdateGajiRequest;

class GajiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $gajis = Gaji::with('worker.user')->get();
        return view('gajis.index',compact('gajis'));
    }

    public function create()
    {
        $worker = Worker::all();
        return view('gajis.create',compact('worker'));
    }

    
    public function store(StoreGajiRequest $request)
    {
        try {
            // Mulai transaksi
            DB::transaction(function() use ($request) {
                $validated = $request->validated();
                Gaji::create($validated);
            });
    
            // Redirect jika sukses
            return redirect()->route('gajis.index')->with('success', 'Data buku berhasil disimpan!');

            
        } catch (\Exception $e) {
            // Log error jika ada exception
            Log::error('Error saat menyimpan data Gaji: ' . $e->getMessage());
    
            // Redirect dengan pesan error
            return redirect()->back()->withErrors('Terjadi kesalahan saat menyimpan data: ' . $e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Gaji $gaji)
    {
        return  view('gajis.show',compact('gaji'));
    }

    public function edit(Gaji $gaji)
    {
        $worker = Worker::all();
        return view('gajis.edit',compact('gaji','worker'));
    }

    public function update(UpdateGajiRequest $request, Gaji $gaji)
    {
        try {
            //DB::transaction ini memastikan data masuk semua, kl ada tidak lengkap maka otomatis di rollback
            DB::transaction(function() use ($request, $gaji){
               $validated = $request->validated();
               $gaji->update($validated);
               });
               return redirect()->route('gajis.index')->with('success', 'Data Gaji berhasil di update!');
   
           } catch (\Exception $e) {
               // Log error jika ada exception
               \Log::error('Error saat menyimpan data gaji: ' . $e->getMessage());
   
               // Redirect dengan pesan error
               return redirect()->back()->withErrors('Terjadi kesalahan saat menyimpan data: ' . $e->getMessage());
           }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Gaji $gaji)
    {
        //
    }


    public function showUploadForm()
    {
        return view('gajis.upload');
    }

    public function uploadSlipGaji(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:docx',
            'periode' => 'required|string',
        ]);

        // Upload file docx
        $file = $request->file('file');
        $originalName = $file->getClientOriginalName();
        $docxPath = $file->storeAs('slip_gaji', $originalName);

        $fullDocxPath = storage_path('app/' . $docxPath);

        // Convert DOCX ke PDF pakai LibreOffice
        $outputDir = storage_path('app/slip_gaji/pdf');
        if (!file_exists($outputDir)) {
            mkdir($outputDir, 0777, true);
        }

        $libreOfficePath = '"C:\Program Files\LibreOffice\program\soffice.exe"';
        $command = $libreOfficePath . " --headless --convert-to pdf --outdir " . escapeshellarg($outputDir) . " " . escapeshellarg($fullDocxPath);
        exec($command, $output, $returnVar);
                
        \Log::debug('LibreOffice output:', $output);
        \Log::debug('LibreOffice return code: ' . $returnVar);

        $convertedFiles = glob($outputDir . '/*.pdf');
        \Log::debug('Converted PDF files:', $convertedFiles);

        // Cari file PDF hasil konversi
        $pdfFilename = pathinfo($originalName, PATHINFO_FILENAME) . '.pdf';
        $fullPdfPath = $outputDir . '/' . $pdfFilename;

        if (!file_exists($fullPdfPath)) {
            return back()->withErrors(['message' => 'Gagal mengonversi DOCX ke PDF.']);
        }

        // Split PDF per halaman
        $this->processSlipGaji($fullPdfPath, $request->periode);

        return redirect()->back()->with('success', 'Slip gaji berhasil diproses.');
    }

    private function processSlipGaji($pdfPath, $periode)
    {
        $parser = new Parser();
        $pdf = $parser->parseFile($pdfPath);
        $pages = $pdf->getPages();
        $pageCount = count($pages);

        $pdfSplitter = new Fpdi();
        $source = $pdfSplitter->setSourceFile($pdfPath);

        foreach (range(1, $pageCount) as $pageNumber) {
            $pdfSplitter->AddPage();
            $templateId = $pdfSplitter->importPage($pageNumber);
            $pdfSplitter->useTemplate($templateId);

            // Simpan halaman ke file baru
            $individualPdfPath = storage_path('app/slip_gaji/individual/page_' . $pageNumber . '.pdf');
            if (!file_exists(dirname($individualPdfPath))) {
                mkdir(dirname($individualPdfPath), 0777, true);
            }

            $pdfSplitter->Output($individualPdfPath, 'F');

            // Parse text untuk ambil NRP
            $individualParser = new Parser();
            $individualPdf = $individualParser->parseFile($individualPdfPath);
            $text = $individualPdf->getText();

            preg_match('/NIP\/Nama\s*:\s*(\d{6,})/', $text, $matches);

            if (isset($matches[1])) {
                $nrp = $matches[1];

                // Cari worker_id dari NRP
                $worker = Worker::where('nrp', $nrp)->first();

                if ($worker) {
                    $namaFile = 'slip_gaji_' . $nrp . '_' . $periode . '.pdf';
                    $pathFile = 'slip_gaji/final/' . $namaFile;

                    // Pindahkan file ke folder final
                    if (!file_exists(storage_path('app/slip_gaji/final'))) {
                        mkdir(storage_path('app/slip_gaji/final'), 0777, true);
                    }
                    copy($individualPdfPath, storage_path('app/' . $pathFile));

                    // Simpan ke database
                    Gaji::create([
                        'worker_id' => $worker->id,
                        'nama_file' => $namaFile,
                        'path_file' => $pathFile,
                        'periode' => $periode,
                    ]);
                } else {
                    \Log::warning("NRP $nrp tidak ditemukan di database.");
                }
            } else {
                \Log::warning("NRP tidak ditemukan di halaman $pageNumber");
            }

            // Clear FPDI object untuk halaman berikutnya
            $pdfSplitter = new Fpdi();
            $source = $pdfSplitter->setSourceFile($pdfPath);
        }
    }
        

    private function extractFileContent($file, $extension)
    {
        try {
            if ($extension === 'pdf') {
                $parser = new PdfParser();
                return $parser->parseFile($file->path())->getText();
            } else {
                $phpWord = IOFactory::load($file->path());
                $content = '';
                
                // Cara lebih baik untuk ekstrak teks dari Word
                foreach ($phpWord->getSections() as $section) {
                    $elements = $section->getElements();
                    foreach ($elements as $element) {
                        if ($element instanceof \PhpOffice\PhpWord\Element\TextRun) {
                            foreach ($element->getElements() as $text) {
                                if ($text instanceof \PhpOffice\PhpWord\Element\Text) {
                                    $content .= $text->getText() . "\n";
                                }
                            }
                        }
                    }
                }
                
                \Log::info('Extracted content:', ['sample' => substr($content, 0, 200)]);
                return $content;
            }
        } catch (\Exception $e) {
            \Log::error('Error extracting file content: '.$e->getMessage());
            throw new \Exception("Gagal mengekstrak konten file: ".$e->getMessage());
        }
    }

    
    private function parseSlips($content)
    {
        // Normalisasi line endings dan tambahkan debugging
        $content = str_replace("\r\n", "\n", $content);
        \Log::info('Raw content for parsing:', ['content_sample' => substr($content, 0, 500)]);
        
        // Pattern yang lebih fleksibel untuk mencocokkan format slip Anda
        $pattern = '/PT\s+RUNG\s+MITRA\s+LESTARI.*?NRP[\/:]?\s*(\d+).*?SLIP\s+GAJI\s+\*\*(.*?)\*\*/s';
        
        preg_match_all($pattern, $content, $matches, PREG_SET_ORDER);
        
        $slips = [];
        foreach ($matches as $match) {
            $nrp = $match[1];
            $periode = $match[2];
            $slips[$nrp] = [
                'content' => $match[0],
                'periode' => $periode
            ];
        }
        
        \Log::info('Parsed slips details:', ['slips' => $slips]);
        return $slips;
    }

    private function extractPeriode($content)
    {
        if (preg_match('/SLIP GAJI\s*\n\*\*(.*?)\*\*/', $content, $matches)) {
            return $matches[1];
        }
        return null;
    }

    private function formatSlipToHtml($content)
    {
        // Konversi teks slip ke HTML sederhana
        return '<html><body><pre>'.nl2br(htmlspecialchars($content)).'</pre></body></html>';
    }
}
