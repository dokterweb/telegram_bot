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
                $surat_tugas_filePath = $request->file('surat_tugas_file')->store('surat_tugas_files', 'public');
                $surat_tugas_filePath = str_replace('public/', '', $surat_tugas_filePath);
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

            if ($request->hasFile('surat_tugas_file')) {
                // Hapus file lama dulu kalau ada
                if ($suratTugas->surat_tugas_file && Storage::disk('public')->exists($suratTugas->surat_tugas_file)) {
                    Storage::disk('public')->delete($suratTugas->surat_tugas_file);
                }

                // Upload file baru
                $surat_tugas_filePath = $request->file('surat_tugas_file')->store('surat_tugas_files', 'public');
                $surat_tugas_filePath = str_replace('public/', '', $surat_tugas_filePath);
            } else {
                // Kalau tidak upload file baru, gunakan file lama
                $surat_tugas_filePath = $suratTugas->surat_tugas_file;
            }

            $suratTugas->update([
                'worker_id'   => $validated['worker_id'],
                'surat_tugas_file'  => $surat_tugas_filePath,
            ]);

            DB::commit();
            return redirect()->route('surattugases.index')->with('success', 'Data Surat Keja berhasil di update!');
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
