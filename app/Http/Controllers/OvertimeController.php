<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\Overtime;
use Illuminate\Http\Request;
use Smalot\PdfParser\Parser;
use setasign\Fpdi\Fpdi;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class OvertimeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $overtimes = Overtime::with('worker.user')->get();
        return view('overtimes.index',compact('overtimes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(overtime $overtime)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(overtime $overtime)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, overtime $overtime)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Overtime $overtime)
    {
        try {
            // Log untuk proses penghapusan
            Log::info('Menghapus Overtime ID: ' . $overtime->id);
    
            // Ambil path file PDF terkait
            $pdfPath = public_path($overtime->path_file);
    
            // Hapus file PDF jika ada
            if (file_exists($pdfPath)) {
                unlink($pdfPath); // Menghapus file
                Log::info("File PDF berhasil dihapus: " . $pdfPath);
            } else {
                Log::warning("File PDF tidak ditemukan: " . $pdfPath);
            }
    
            // Hapus record Overtime dari database
            $overtime->delete();
            Log::info("Data Overtime dengan ID {$overtime->id} berhasil dihapus.");
    
            // Redirect dengan pesan sukses
            return redirect()->route('overtimes.index')->with('success', 'Overtime berhasil dihapus.');
        } catch (\Exception $e) {
            // Jika terjadi error, log pesan error dan beri tahu pengguna
            Log::error("Terjadi kesalahan saat menghapus Overtime: " . $e->getMessage());
            return back()->withErrors(['message' => 'Terjadi kesalahan saat menghapus Overtime.']);
        }
    }

    public function showUploadForm()
    {
        return view('overtimes.upload');
    }

    public function uploadOvertimePdf(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:pdf|max:10000',
            'periode' => 'required|date_format:Y-m',
        ]);

        // Format periode menjadi date (contoh: "2025-01" => "2025-01-01")
        $periode = $request->input('periode') . '-01';

        // Simpan file PDF asli
        $originalFile = $request->file('file');
        $originalName = 'overtime_' . time() . '.pdf';
        $pdfPath = storage_path('app/overtime/pdf/' . $originalName);
        $originalFile->move(storage_path('app/overtime/pdf/'), $originalName);

        // Proses pemisahan dan simpan ke tabel
        $this->processOvertimePdf($pdfPath, $periode);

        return redirect()->back()->with('success', 'File overtime berhasil diproses.');
    }


    private function processOvertimePdf($pdfPath, $periode)
    {
        $parser = new Parser();
        $pdf = $parser->parseFile($pdfPath);
        $pages = $pdf->getPages();
        $pageCount = count($pages);

        foreach (range(1, $pageCount) as $pageNumber) {
            // Buat FPDI baru per halaman
            $fpdi = new Fpdi();
            $fpdi->AddPage();
            $fpdi->setSourceFile($pdfPath);
            $templateId = $fpdi->importPage($pageNumber);
            $fpdi->useTemplate($templateId);

            // Simpan halaman ke file sementara
            $tempDir = storage_path('app/overtime/temp/');
            if (!file_exists($tempDir)) {
                mkdir($tempDir, 0777, true);
            }

            $tempPagePath = $tempDir . "page_{$pageNumber}.pdf";
            $fpdi->Output($tempPagePath, 'F');

            // Ambil teks dari halaman
            $singleParser = new Parser();
            $pageText = $singleParser->parseFile($tempPagePath)->getText();
         
            preg_match('/(\d{6,})\s*Nrp/', $pageText, $matches);

         
            if (isset($matches[1])) {
                $nrp = $matches[1];
                Log::info("✅ NRP ditemukan: {$nrp} di halaman {$pageNumber}");
            } else {
                Log::warning("❌ NRP tidak ditemukan di halaman {$pageNumber}");
                continue;
            }
            

            $nrp = $matches[1];
            $worker = Worker::where('nrp', $nrp)->first();

            if (!$worker) {
                \Log::warning("NRP {$nrp} tidak ditemukan di database.");
                continue;
            }

            // Simpan ke folder public/overtimes
            $namaFile = 'overtime_' . $nrp . '_' . date('Ymd', strtotime($periode)) . '.pdf';
            $publicPath = 'overtime_files/' . $namaFile;
            $fullPath = public_path($publicPath);

            if (!file_exists(dirname($fullPath))) {
                mkdir(dirname($fullPath), 0777, true);
            }

            copy($tempPagePath, $fullPath);
            
            Log::info("Memproses halaman {$pageNumber} - NRP: {$nrp}");

            // Simpan ke database
            try {
                Overtime::create([
                    'worker_id' => $worker->id,
                    'nama_file' => $namaFile,
                    'path_file' => $publicPath,
                    'periode'   => $periode,
                ]);
                Log::info("Insert berhasil untuk {$worker->id} - {$namaFile}");
            } catch (\Exception $e) {
                Log::error("Gagal insert overtime: " . $e->getMessage());
            }
        }
    }



}
