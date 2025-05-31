<?php

namespace App\Http\Controllers;

use App\Models\Usl;
use App\Models\Worker;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use PhpOffice\PhpSpreadsheet\Shared\Date;

class UslController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $usls = Usl::with('worker.user')->get();
        return view('usls.index',compact('usls'));
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
            
                $nrp        = $row[0]; // NIP/NRP
                $tanggalRaw = $row[2];
                $inRaw      = $row[3];
                $outRaw     = $row[4];
                $status     = $row[5];
            
                // Konversi tanggal
                if (is_numeric($tanggalRaw)) {
                    $tanggal = Date::excelToDateTimeObject($tanggalRaw)->format('Y-m-d');
                } else {
                    $tanggal = date('Y-m-d', strtotime($tanggalRaw));
                }
            
                // Konversi waktu IN
                if (is_numeric($inRaw)) {
                    $in = Date::excelToDateTimeObject($inRaw)->format('H:i:s');
                } else {
                    $in = date('H:i:s', strtotime($inRaw));
                }
            
                // Konversi waktu OUT
                if (is_numeric($outRaw)) {
                    $out = Date::excelToDateTimeObject($outRaw)->format('H:i:s');
                } else {
                    $out = date('H:i:s', strtotime($outRaw));
                }
            
                $worker = Worker::where('nrp', $nrp)->first();
            
                if ($worker) {
                    Usl::updateOrCreate(
                        [
                            'worker_id' => $worker->id,
                            'tanggal'   => $tanggal,
                        ],
                        [
                            'in'        => $in,
                            'out'       => $out,
                            'status'    => $status,
                        ]
                    );
                }
            }
    
            DB::commit();
            return redirect()->route('usls.index')->with('success', 'Data cuti berhasil diimport!');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error', 'Terjadi kesalahan saat import: ' . $e->getMessage());
        }
    }
    

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
    public function show(usl $usl)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(usl $usl)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'id'        => 'required|exists:usls,id',
            'tanggal'   => 'required|date',
            'in'        => 'required|date_format:H:i',
            'out'       => 'required|date_format:H:i',
            'status'    => 'required|string',
        ]);
    
        // Tambahkan detik ':00' jika hanya HH:MM yang dikirim
        $in = $request->in;
        if (strlen($in) === 5) { // contoh: 08:22
            $in .= ':00';        // menjadi: 08:22:00
        }
    
        $out = $request->out;
        if (strlen($out) === 5) {
            $out .= ':00';
        }
    
        $cuti = Usl::findOrFail($request->id);
        $cuti->update([
            'tanggal'   => $request->tanggal,
            'in'        => $in,
            'out'       => $out,
            'status'    => $request->status,
        ]);
    
        return redirect()->route('usls.index')->with('success', 'Data cuti berhasil diperbarui.');
    }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(usl $usl)
    {
        //
    }
}
