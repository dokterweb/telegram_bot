<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\Suratlain;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SuratlainController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $suratlains = Suratlain::with('worker.user')->get();
        return view('suratlains.index',compact('suratlains'));
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
    public function show(Suratlain $suratlain)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Suratlain $suratlain)
    {
        $worker = Worker::all();
        return view('suratlains.edit',compact('suratlain','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Suratlain $suratlain)
    {
        DB::beginTransaction();
        try {
             // Validasi input untuk worker_id dan file upload
             $validated = $request->validate([
                'worker_id'         => 'required|integer|exists:workers,id', // Pastikan worker_id ada di tabel workers
                'tgl_mintasurat'    => 'required|date',
                'keterangan'        => 'required','string','max:255',
                'suratlain_file'    => 'required|mimes:pdf|max:50000',     // Validasi file PDF
            ]);

            if ($request->hasFile('suratlain_file')) {
                // Hapus file lama dulu kalau ada

                if ($suratlain->suratlain_file && file_exists(public_path('suratlain_file/' . $suratlain->suratlain_file))) {
                    unlink(public_path('suratlain_file/' . $suratlain->suratlain_file)); // Hapus file lama
                }

                 // Perubahan: Tentukan lokasi folder public/tiket_files untuk menyimpan file
                 $file = $request->file('suratlain_file');
                 $fileName = $file->getClientOriginalName();
                 $suratlain_filePath = 'suratlain_file/' . $fileName;
 
                 // Pindahkan file ke folder public/suratlain_files
                 $file->move(public_path('suratlain_file'), $fileName);

            } else {
                // Kalau tidak upload file baru, gunakan file lama
                $suratlain_filePath = $suratlain->suratlain_file;
            }

            $suratlain->update([
                'worker_id'         => $validated['worker_id'],
                'tgl_mintasurat'    => $validated['tgl_mintasurat'],
                'keterangan'        => $validated['keterangan'],
                'suratlain_file'    => $suratlain_filePath?? null,
                
            ]);

            DB::commit();
            return redirect()->route('suratlains.index')->with('success', 'Data Surat Lain berhasil di update!');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Gagal update Surat Lain ', ['error' => $e->getMessage()]);
            return redirect()->route('suratlains.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Suratlain $suratlain)
    {
        DB::beginTransaction();
        try {
            // Hapus file terkait jika ada
            if ($suratlain->suratlain_file && file_exists(public_path('suratlain_file/' . $suratlain->suratlain_file))) {
                unlink(public_path('suratlain_file/' . $suratlain->suratlain_file)); // Hapus file
            }

            // Hapus data dari database
            $suratlain->delete();

            DB::commit();
            return redirect()->route('suratlains.index')->with('success', 'Data Surat Tetap berhasil dihapus');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('suratlains.index')->with('error', 'Terjadi kesalahan saat menghapus data');
        }
    }
}
