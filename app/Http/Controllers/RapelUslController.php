<?php

namespace App\Http\Controllers;

use App\Models\Usl;
use App\Models\RapelUsl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
                    'bulan_tahun' => $bulanTahun,
                    'nama' => optional($rapel->worker->user)->name ?? '-',
                    'nrp' => optional($rapel->worker)->nrp ?? '-',
                ];
            });
    
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
            'totalusl' => $request->tarif + $request->rapelan, // Contoh perhitungan total usl
        ]);

        // Redirect ke halaman index atau detail dengan pesan sukses
        return redirect()->route('RapelUsls.detail', $rapelusl->id)
            ->with('success', 'Data Rapel USL berhasil diperbarui.');
    }


}
