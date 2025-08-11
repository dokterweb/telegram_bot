<?php

namespace App\Http\Controllers;

use Mpdf\Mpdf;
use App\Models\Usl;
use App\Models\Worker;
// use Barryvdh\DomPDF\PDF;
use App\Models\RapelUsl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpWord\Writer\PDF\TCPDF;
// use Barryvdh\DomPDF\Facade as PDF;

class RapelUslController extends Controller
{
    public function index()
    {
        // Ambil data rapel_usls beserta relasi worker dan user
        // Dan agregasi bulan & tahun dari tabel usls berdasarkan worker_id
    
        $rapelData = RapelUsl::with(['worker.user'])
            ->get()
            ->map(function ($rapel) {
                // Ambil bulan dan tahun dari usls milik worker ini
                $bulanTahun = Usl::where('worker_id', $rapel->worker_id)
                    ->select(DB::raw('DATE_FORMAT(tanggal, "%M %Y") as bulan_tahun'))
                    ->distinct()
                    ->pluck('bulan_tahun')
                    ->join(', ');
    
                return [
                    'id' => $rapel->id,              // tambahkan ini
                    'totalhadir' => $rapel->totalhadir,
                    'rapel_file' => $rapel->rapel_file,
                    'bulan_tahun' => $bulanTahun,
                    'nama' => optional($rapel->worker->user)->name ?? '-',
                    'nrp' => optional($rapel->worker)->nrp ?? '-',
                ];
            });
        // dd($rapelData);
        return view('rapel_usls.index', compact('rapelData'));
    }

    public function detail(RapelUsl $rapelusl)
    {
        // Ambil semua data usls yang berelasi dengan rapel_usl ini
        $usls = Usl::where('rapel_usl_id', $rapelusl->id)
                ->with('worker.user') // eager load relasi worker dan user agar data nama dan nrp bisa dipakai
                ->get();
                // \Log::info('Detail RapelUsl', ['rapelusl' => $rapelusl, 'usls' => $usls]);

        return view('rapel_usls.detail', compact('rapelusl', 'usls'));
    }

    public function update(Request $request, RapelUsl $rapelusl)
    {
        // Validasi input
        $request->validate([
            'tarif'   => 'required|numeric|min:0',
            'rapelan' => 'required|numeric|min:0',
        ]);

        // Update data rapel_usls dengan nilai baru
        $rapelusl->update([
            'tarif'   => $request->tarif,
            'rapelan' => $request->rapelan,
            'totalusl' => ($rapelusl->totalhadir * $request->tarif) + $request->rapelan, // Rumus baru
        ]);

        // Memperbarui PDF setelah update
        $this->generateRapelPdf($rapelusl->worker_id); // Panggil fungsi untuk memperbarui PDF
        
        // Redirect ke halaman index atau detail dengan pesan sukses
        return redirect()->route('RapelUsls.detail', $rapelusl->id)
            ->with('success', 'Data Rapel USL berhasil diperbarui.');
    }

    public function generateRapelPdf($workerId)
{
    // Ambil data worker dan rapel
    $worker = Worker::find($workerId);
    $rapel = RapelUsl::where('worker_id', $workerId)->first();

    // Ambil semua data USL untuk worker ini
    $usls = Usl::where('worker_id', $workerId)->get();

    // Data untuk view PDF
    $data = [
        'worker' => $worker,
        'rapel' => $rapel,
        'usls' => $usls,
    ];

    // Render the Blade view to HTML
    $html = view('rapel_usls.rapel', $data)->render();

    // Create an instance of mPDF
    $mpdf = new Mpdf();

    // Write HTML to the PDF
    $mpdf->WriteHTML($html);

    // Tentukan nama file PDF
    $pdfFileName = 'rapel_usl_' . date('ymdHis'). '.pdf';

    // Tentukan folder tujuan penyimpanan di public/rapel_usl
    $pdfFilePath = public_path('rapel_usl/' . $pdfFileName);

    // Simpan PDF ke folder public/rapel_usl/
    $mpdf->Output($pdfFilePath, 'F'); // 'F' untuk menyimpan file

    // Update path file PDF ke database
    $rapel->update([
        'rapel_file' => 'rapel_usl/' . $pdfFileName,
    ]);

    return $pdfFilePath; // Return path file PDF yang baru
}
}
