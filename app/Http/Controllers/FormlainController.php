<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\Formlain;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class FormlainController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $formlains = Formlain::with('worker.user')->get();
        return view('formlains.index',compact('formlains'));
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
    public function show(Formlain $formlain)
    {
        //
    }

    public function edit(Formlain $formlain)
    {
        $worker = Worker::all();
        return view('formlains.edit',compact('formlain','worker'));
    }

    public function update(Request $request, Formlain $formlain)
    {
        DB::beginTransaction();
        try {
            // Validasi input untuk worker_id dan file upload
            $validated = $request->validate([
                'worker_id'         => 'required|integer|exists:workers,id', // Pastikan worker_id ada di tabel workers
                'tgl_mintaform'    => 'required|date',
                'keterangan'        => 'required|string|max:255',
                'formlain_file'    => 'nullable|mimes:pdf|max:50000', // File bisa kosong
            ]);
    
            if ($request->hasFile('formlain_file')) {
                // Hapus file lama dulu kalau ada
                if ($formlain->formlain_file && file_exists(public_path('formlain_file/' . $formlain->formlain_file))) {
                    unlink(public_path('formlain_file/' . $formlain->formlain_file)); // Hapus file lama
                }
    
                // Upload file baru
                $file = $request->file('formlain_file');
                $fileName = $file->getClientOriginalName();
                $formlain_filePath = 'formlain_file/' . $fileName;
                
                // Pindahkan file ke folder public/formlain_file
                $file->move(public_path('formlain_file'), $fileName);
            } else {
                // Kalau tidak ada file baru, gunakan file lama
                $formlain_filePath = $formlain->formlain_file;
            }
    
            // Update data formlain
            $formlain->update([
                'worker_id'         => $validated['worker_id'],
                'tgl_mintaform'    => $validated['tgl_mintaform'],
                'keterangan'        => $validated['keterangan'],
                'formlain_file'    => $formlain_filePath, // Menggunakan file baru atau lama
            ]);
    
            DB::commit();
            return redirect()->route('formlains.index')->with('success', 'Data Form Lain berhasil di update!');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Gagal update Form Lain ', ['error' => $e->getMessage()]);
            return redirect()->route('formlains.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Formlain $formlain)
    {
        DB::beginTransaction();
        try {
            // Hapus file terkait jika ada
            if ($formlain->formlain_file && file_exists(public_path('formlain_file/' . $formlain->formlain_file))) {
                unlink(public_path('formlain_file/' . $formlain->formlain_file)); // Hapus file
            }

            // Hapus data dari database
            $formlain->delete();

            DB::commit();
            return redirect()->route('formlains.index')->with('success', 'Data Surat Tetap berhasil dihapus');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('formlains.index')->with('error', 'Terjadi kesalahan saat menghapus data');
        }
    }
}
