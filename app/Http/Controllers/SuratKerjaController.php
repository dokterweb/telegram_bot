<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\SuratKerja;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreSuratKerjaRequest;
use App\Http\Requests\UpdateSuratKerjaRequest;
use Illuminate\Support\Facades\Storage;

class SuratKerjaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $suratkerjas = SuratKerja::with('worker.user')->get();
        return view('suratkerjas.index',compact('suratkerjas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('suratkerjas.create',compact('worker'));//
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreSuratKerjaRequest $request)
    {
        DB::beginTransaction();
        try {
            $validated = $request->validated();
    
            if($request->hasFile('surat_kerja_file')){

                 // Perubahan: Tentukan lokasi folder public/tiket_files untuk menyimpan file
                 $file = $request->file('surat_kerja_file');
                 $fileName = $file->getClientOriginalName();
                 $surat_kerja_filePath = 'surat_kerja_file/' . $fileName;
 
                 // Pindahkan file ke folder public/surat_kerja_files
                 $file->move(public_path('surat_kerja_file'), $fileName);
            }

            SuratKerja::create([
                'worker_id'   => $validated['worker_id'],
                'surat_kerja_file'  => $surat_kerja_filePath ?? null,
            ]);
    
            DB::commit();
            return redirect()->route('suratkerjas.index')->with('success', 'Data Karyawan berhasil disimpan!');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('suratkerjas.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(SuratKerja $suratKerja)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SuratKerja $suratkerja)
    {
        $worker = Worker::all();
        return view('suratkerjas.edit',compact('suratkerja','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSuratKerjaRequest $request, SuratKerja $suratkerja)
    {
        DB::beginTransaction();
        try {
            $validated = $request->validated();

            if ($request->hasFile('surat_kerja_file')) {
                // Hapus file lama dulu kalau ada

                if ($suratkerja->surat_kerja_file && file_exists(public_path('surat_kerja_file/' . $suratkerja->surat_kerja_file))) {
                    unlink(public_path('surat_kerja_file/' . $suratkerja->surat_kerja_file)); // Hapus file lama
                }

                 // Perubahan: Tentukan lokasi folder public/tiket_files untuk menyimpan file
                 $file = $request->file('surat_kerja_file');
                 $fileName = $file->getClientOriginalName();
                 $surat_kerja_filePath = 'surat_kerja_file/' . $fileName;
 
                 // Pindahkan file ke folder public/surat_kerja_files
                 $file->move(public_path('surat_kerja_file'), $fileName);

            } else {
                // Kalau tidak upload file baru, gunakan file lama
                $surat_kerja_filePath = $suratkerja->surat_kerja_file;
            }

            $suratkerja->update([
                'worker_id'   => $validated['worker_id'],
                'surat_kerja_file'  => $surat_kerja_filePath,
            ]);

            DB::commit();
            return redirect()->route('suratkerjas.index')->with('success', 'Data Surat Keja berhasil di update!');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Gagal update Surat Keja ', ['error' => $e->getMessage()]);
            return redirect()->route('suratkerjas.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            $suratkerja = SuratKerja::findOrFail($id);
            $suratkerja->delete();
            
            return redirect()->route('suratkerjas.index')
                ->with('success', 'Data suratkerja berhasil dihapus!');
                
        } catch (\Exception $e) {
            return redirect()->route('suratkerjas.index')
                ->with('error', 'Gagal menghapus suratkerja: ' . $e->getMessage());
        }
    }
}
