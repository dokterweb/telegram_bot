<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\Surat_aktif;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SuratAktifController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $surataktif = Surat_aktif::with('worker.user')->get();
        return view('surataktifs.index',compact('surataktif'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('surataktifs.create',compact('worker'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            // Validasi input untuk worker_id dan file upload
            $validated = $request->validate([
                'worker_id'         => 'required|integer|exists:workers,id', // Pastikan worker_id ada di tabel workers
                'tgl_surat_aktif'   => 'required|date',
                'surat_aktif_file'  => 'required|mimes:pdf|max:50000',     // Validasi file PDF
            ]);
    
            // Simpan file surat aktif ke folder public/surat_aktif
            if ($request->hasFile('surat_aktif_file')) {
                $file = $request->file('surat_aktif_file');
                $fileName = $file->getClientOriginalName();
                $surat_aktifPath = 'surat_aktif/' . $fileName;
    
                // Pindahkan file ke public/surat_aktif
                $file->move(public_path('surat_aktif'), $fileName);
            }
    
            // Simpan ke database
            Surat_aktif::create([
                'worker_id'         => $validated['worker_id'],
                'tgl_surat_aktif'   => $validated['tgl_surat_aktif'], // Perbaiki nama field
                'surat_aktif_file'  => $surat_aktifPath ?? null,
            ]);
    
            return redirect()->route('surataktifs.index')->with('success', 'Data Surat Aktif berhasil disimpan');
        } catch (\Exception $e) {
            \Log::error('Surat Aktif Store Error: ' . $e->getMessage());
            return redirect()->back()->withInput()->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }
    

    /**
     * Display the specified resource.
     */
    public function show(Surat_aktif $surat_aktif)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Surat_aktif $surataktif)
    {
        $worker = Worker::all();
        return view('surataktifs.edit',compact('surataktif','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Surat_aktif $suratAktif)
    {
        DB::beginTransaction();
        try {
            // Validasi input untuk worker_id dan file upload
            $validated = $request->validate([
                'worker_id'         => 'required|integer|exists:workers,id', // Pastikan worker_id ada di tabel workers
                'tgl_surat_aktif'   => 'required|date',
                'surat_aktif_file'  => 'nullable|mimes:pdf|max:50000', // Surat aktif file bersifat optional saat update
            ]);
    
            // Update worker_id dan tanggal surat aktif
            $suratAktif->worker_id = $validated['worker_id'];
            $suratAktif->tgl_surat_aktif = $validated['tgl_surat_aktif'];
    
            // Cek jika ada file baru yang di-upload
            if ($request->hasFile('surat_aktif_file')) {
                // Hapus file lama jika ada
                if ($suratAktif->surat_aktif_file && file_exists(public_path('surat_aktif/' . $suratAktif->surat_aktif_file))) {
                    unlink(public_path('surat_aktif/' . $suratAktif->surat_aktif_file)); // Hapus file lama
                }
    
                // Upload file baru
                $file = $request->file('surat_aktif_file');
                $fileName = $file->getClientOriginalName();
                $surat_aktifPath = 'surat_aktif/' . $fileName;
    
                // Pindahkan file baru ke folder public/surat_aktif
                $file->move(public_path('surat_aktif'), $fileName);
    
                // Update path file di database
                $suratAktif->surat_aktif_file = $surat_aktifPath;
            }
    
            // Simpan perubahan ke database
            $suratAktif->save();
    
            DB::commit();
            return redirect()->route('surataktifs.index')->with('success', 'Data Surat Aktif berhasil diperbarui');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('surataktifs.index')->with('error', 'Terjadi kesalahan saat memperbarui data');
        }
    }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Surat_aktif $surataktif)
    {
        DB::beginTransaction();
        try {
            // Hapus file terkait jika ada
            if ($surataktif->surat_aktif_file && file_exists(public_path('surat_aktif/' . $surataktif->surat_aktif_file))) {
                unlink(public_path('surat_aktif/' . $surataktif->surat_aktif_file)); // Menghapus file
            }
    
            // Hapus data dari database
            $surataktif->delete();
    
            DB::commit();
            return redirect()->route('surataktifs.index')->with('success', 'Data Surat Aktif berhasil dihapus');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('surataktifs.index')->with('error', 'Terjadi kesalahan saat menghapus data');
        }
    }
    
}
