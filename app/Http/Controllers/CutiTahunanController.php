<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Worker;
use App\Models\CutiTahunan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;

class CutiTahunanController extends Controller
{
    public function index()
    {
        $cutitahunans = CutiTahunan::with('worker.user')->get();
        return view('cutitahunans.index',compact('cutitahunans'));
    }

    
    public function import(Request $request)
{
    $request->validate([
        'file' => 'required|mimes:xlsx,xls'
    ]);

    $file = $request->file('file');

    // Mengimpor data ke array menggunakan Excel
    $data = Excel::toArray([], $file);
    $rows = $data[0];

    DB::beginTransaction();
    try {
        foreach ($rows as $index => $row) {
            if ($index === 0) continue; // Skip header

            // Ambil data dari kolom yang relevan di Excel
            $nrp                = $row[0]; // NIP/NRP
            $jatahcuti          = $row[2];
            $telahcuti          = $row[3];
            $sisacuti           = $row[4];
            $tgl_cutiterakhir   = $row[5];

            // Parse tanggal
            $tgl_cutiterakhir = $this->parseDate($tgl_cutiterakhir);

            // Jika tanggal masih null atau tidak valid, atur default
            if ($tgl_cutiterakhir === null) {
                $tgl_cutiterakhir = now();  // Atur tanggal saat ini sebagai fallback
            }

            // Cari data worker berdasarkan NRP
            $worker = Worker::where('nrp', $nrp)->first();

            if ($worker) {
                // Mengecek apakah data yang ada benar-benar berubah
                $existingCuti = CutiTahunan::where('worker_id', $worker->id)->first();

                // Cek apakah ada perubahan data
                $isUpdated = false;
                if ($existingCuti) {
                    if ($existingCuti->jatahcuti !== $jatahcuti ||
                        $existingCuti->telahcuti !== $telahcuti ||
                        $existingCuti->sisacuti !== $sisacuti ||
                        $existingCuti->tgl_cutiterakhir !== $tgl_cutiterakhir) {
                        $isUpdated = true;
                    }
                }

                // Jika ada perubahan, lakukan update
                if ($isUpdated) {
                    CutiTahunan::updateOrCreate(
                        ['worker_id' => $worker->id], // Kunci pencarian data yang akan diupdate
                        [
                            'jatahcuti'         => $jatahcuti,
                            'telahcuti'         => $telahcuti,
                            'sisacuti'          => $sisacuti,
                            'tgl_cutiterakhir'  => $tgl_cutiterakhir,
                        ]
                    );
                }
            }
        }

        DB::commit();
        return redirect()->route('cutiTahunans.index')->with('success', 'Data cuti berhasil diimport!');
    } catch (\Exception $e) {
        DB::rollback();
        return redirect()->back()->with('error', 'Terjadi kesalahan saat import: ' . $e->getMessage());
    }
}

    

    public function edit(SuratTugas $suratTugas)
    {
        $worker = Worker::all();
        return view('surattugases.edit',compact('suratTugas','worker'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|exists:cuti_tahunans,id',
            'jatahcuti' => 'required|integer',
            'telahcuti' => 'required|integer',
            'sisacuti' => 'required|integer',
            'tgl_cutiterakhir'   => 'required|date',
        ]);
    
        $cuti = CutiTahunan::findOrFail($request->id);
        $cuti->update([
            'jatahcuti'         => $request->jatahcuti,
            'telahcuti'         => $request->telahcuti,
            'sisacuti'          => $request->sisacuti,
            'tgl_cutiterakhir'  => $request->tgl_cutiterakhir,
        ]);
    
        return redirect()->route('cutiTahunans.index')->with('success', 'Data cuti berhasil diperbarui.');
    }
    
    private function parseDate($date)
    {
        // Trim untuk menghilangkan spasi tambahan
        $date = trim($date);

        // Cek jika nilai tanggal adalah formula Excel seperti =NOW() atau =TODAY()
        if (empty($date)) {
            return null; // Kembalikan null jika tanggal tidak valid atau formula Excel
        }

        // Coba parsing dengan format Y-m-d (YYYY-MM-DD)
        try {
            $parsedDate = Carbon::createFromFormat('Y-m-d', $date); // Menggunakan format eksplisit
            return $parsedDate->format('Y-m-d'); // Kembalikan dalam format Y-m-d yang standar
        } catch (\Exception $e) {
            // Jika gagal parsing, coba menggunakan Carbon::parse() yang lebih fleksibel
            try {
                $parsedDate = Carbon::parse($date);
                return $parsedDate->format('Y-m-d');
            } catch (\Exception $e) {
                // Jika gagal parsing, log error dan kembalikan null
                \Log::error('Error parsing date: ' . $date);
                return null;
            }
        }
    }
}
