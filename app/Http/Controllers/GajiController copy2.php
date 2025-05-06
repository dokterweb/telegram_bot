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
use Illuminate\Support\Str;
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
            'slip_gaji' => 'required|file|mimes:doc,docx',
            'periode'   => 'required|string'
        ]);
    
        $periode = $request->periode;
    
        // Simpan file upload
        $uploadedFile = $request->file('slip_gaji');
        $filename = time() . '_' . $uploadedFile->getClientOriginalName();
        $docxPath = storage_path('app/uploads/' . $filename);
        $uploadedFile->move(storage_path('app/uploads'), $filename);
    
        // Convert DOCX to PDF pakai LibreOffice
        $convertedDir = storage_path('app/converted_pdfs');
        if (!file_exists($convertedDir)) {
            mkdir($convertedDir, 0755, true);
        }
    
    
        $command = '"C:\Program Files\LibreOffice\program\soffice.exe" --headless --convert-to pdf --outdir ' . escapeshellarg($convertedDir) . ' ' . escapeshellarg($docxPath);
        exec($command);

        
        $pdfFilename = pathinfo($filename, PATHINFO_FILENAME) . '.pdf';
        $pdfPath = $convertedDir . '/' . $pdfFilename;
    
        if (!file_exists($pdfPath)) {
            return response()->json(['message' => 'Gagal convert DOCX ke PDF.'], 500);
        }
    
        // Split per halaman dan proses simpan ke DB
        $splitFiles = $this->splitPdfPerPage($pdfPath, $periode);
    
        // Simpan ke DB
        foreach ($splitFiles as $file) {
            $worker = Worker::where('nrp', $file['nrp'])->first();
            if (!$worker) {
                Log::warning("NRP tidak ditemukan di tabel workers: " . $file['nrp']);
                continue;
            }
    
            Gaji::create([
                'worker_id' => $worker->id,
                'nama_file' => $file['filename'],
                'path_file' => 'slip-gaji-final/' . $file['filename'],
                'periode'   => $periode,
            ]);
        }
    
        return back()->with('success', 'Slip gaji berhasil diproses dan disimpan.');
    }

    private function splitPdfPerPage(string $pdfPath, string $periode): array
{
    $results = [];

    if (!file_exists($pdfPath)) {
        Log::error("File PDF tidak ditemukan: $pdfPath");
        return [];
    }

    $fpdi = new Fpdi();
    $pageCount = $fpdi->setSourceFile($pdfPath);
    unset($fpdi);

    for ($i = 1; $i <= $pageCount; $i++) {
        $pdf = new Fpdi();
        $pdf->setSourceFile($pdfPath);
        $templateId = $pdf->importPage($i);
        $size = $pdf->getTemplateSize($templateId);

        $pdf->AddPage($size['orientation'], [$size['width'], $size['height']]);
        $pdf->useTemplate($templateId);

        $content = $this->extractTextFromPdfPage($pdfPath, $i);
        preg_match('/NRP\/Nama\s*:(\d{7})/i', $content, $matches);
        $nrp = $matches[1] ?? null;

        if (!$nrp) {
            Log::warning("NRP tidak ditemukan di halaman $i");
            continue;
        }

        $filename = $nrp . '_' . str_replace(' ', '_', strtolower($periode)) . '.pdf';
        $outputPath = storage_path("app/slip-gaji-final/$filename");
        $pdf->Output($outputPath, 'F');

        $results[] = [
            'nrp' => $nrp,
            'filename' => $filename,
            'path' => $outputPath,
        ];

        unset($pdf);
    }

    return $results;
}

private function extractTextFromPdfPage($filePath, $pageNumber)
{
    $parser = new Parser();
    $pdf = $parser->parseFile($filePath);
    $pages = $pdf->getPages();

    return isset($pages[$pageNumber - 1])
        ? $pages[$pageNumber - 1]->getText()
        : '';
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
