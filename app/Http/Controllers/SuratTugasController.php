<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\SuratTugas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreSuratTugasRequest;
use App\Http\Requests\UpdateSuratTugasRequest;
use Illuminate\Support\Facades\Storage;

class SuratTugasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $surattugases = SuratTugas::with('worker.user')->get();
        return view('surattugases.index',compact('surattugases'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('surattugases.create',compact('worker'));//
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreSuratTugasRequest $request)
    {
        DB::beginTransaction();
        try {
            $validated = $request->validated();
    
            if($request->hasFile('surat_tugas_file')){
                // Perubahan: Tentukan lokasi folder public/tiket_files untuk menyimpan file
                $file = $request->file('surat_tugas_file');
                $fileName = $file->getClientOriginalName();
                $surat_tugas_filePath = 'surat_tugas/' . $fileName;

                // Pindahkan file ke folder public/surat_tugas
                $file->move(public_path('surat_tugas'), $fileName);
                
            }
            
            SuratTugas::create([
                'worker_id'   => $validated['worker_id'],
                'surat_tugas_file'  => $surat_tugas_filePath ?? null,
            ]);
    
            DB::commit();
            return redirect()->route('surattugases.index')->with('success', 'Data Surat Tugas berhasil disimpan!');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('surattugases.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(SuratTugas $suratTugas)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SuratTugas $suratTugas)
    {
        $worker = Worker::all();
        return view('surattugases.edit',compact('suratTugas','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSuratTugasRequest $request, SuratTugas $suratTugas)
    {
        DB::beginTransaction();
        try {
            $validated = $request->validated();
            
            // Variabel untuk menyimpan path file
            $surat_tugas_filePath = $suratTugas->surat_tugas_file; // Set file lama sebagai default
    
            // Cek apakah ada file baru yang di-upload
            if ($request->hasFile('surat_tugas_file')) {
                $file = $request->file('surat_tugas_file');
                
                // Jika file ada, hapus file lama
                if ($suratTugas->surat_tugas_file && file_exists(public_path('surat_tugas/' . $suratTugas->surat_tugas_file))) {
                    unlink(public_path('surat_tugas/' . $suratTugas->surat_tugas_file)); // Hapus file lama
                }
    
                // Tentukan nama file dan path penyimpanan
                $fileName = $file->getClientOriginalName();
                $surat_tugas_filePath = 'surat_tugas/' . $fileName;
    
                // Pindahkan file baru ke folder public/surat_tugas
                $file->move(public_path('surat_tugas'), $fileName);
            }
    
            // Update data SuratTugas di database
            $suratTugas->update([
                'worker_id' => $validated['worker_id'],
                'surat_tugas_file' => $surat_tugas_filePath,  // Pastikan path file yang benar disimpan
            ]);
    
            DB::commit();
            return redirect()->route('surattugases.index')->with('success', 'Data Surat Kerja berhasil diupdate!');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('surattugases.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            $surattugas = SuratTugas::findOrFail($id);
            $surattugas->delete();
            
            return redirect()->route('surattugases.index')
                ->with('success', 'Data surattugas berhasil dihapus!');
                
        } catch (\Exception $e) {
            return redirect()->route('surattugases.index')
                ->with('error', 'Gagal menghapus surattugas: ' . $e->getMessage());
        }
    }
}
