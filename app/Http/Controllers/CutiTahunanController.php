<?php

namespace App\Http\Controllers;

use App\Models\CutiTahunan;
use App\Models\Worker;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\DB;

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

        $data = Excel::toArray([], $file);
        $rows = $data[0];

        DB::beginTransaction();
        try {
            foreach ($rows as $index => $row) {
                if ($index === 0) continue; // Skip header

                $nrp = $row[0]; // NIP/NRP
                $jatahcuti = $row[2];
                $sisacuti = $row[3];
                $telahcuti = $row[4];

                $worker = Worker::where('nrp', $nrp)->first();

                if ($worker) {
                    // Upsert (update if exists, else insert)
                    CutiTahunan::updateOrCreate(
                        ['worker_id' => $worker->id],
                        [
                            'jatahcuti' => $jatahcuti,
                            'sisacuti' => $sisacuti,
                            'telahcuti' => $telahcuti,
                        ]
                    );
                }
            }

            DB::commit();
            return redirect()->route('cutiTahunan.index')->with('success', 'Data cuti berhasil diimport!');
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
            'sisacuti' => 'required|integer',
            'telahcuti' => 'required|integer',
        ]);
    
        $cuti = CutiTahunan::findOrFail($request->id);
        $cuti->update([
            'jatahcuti' => $request->jatahcuti,
            'sisacuti' => $request->sisacuti,
            'telahcuti' => $request->telahcuti,
        ]);
    
        return redirect()->route('cutiTahunans.index')->with('success', 'Data cuti berhasil diperbarui.');
    }
    
}
