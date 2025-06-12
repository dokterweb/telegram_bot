<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use Illuminate\Http\Request;
use App\Models\Surat_tetap_promosi;
use Illuminate\Support\Facades\DB;

class SuratTetapPromosiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $stp = Surat_tetap_promosi::with('worker.user')->get();
        return view('surat_tetap_promosis.index',compact('stp'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('surat_tetap_promosis.create',compact('worker'));
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
                'tgl_surat_tetap'   => 'required|date',
                'surat_tetap_file'  => 'required|mimes:pdf|max:50000',     // Validasi file PDF
            ]);
    
            // Simpan file surat tetap ke folder public/surat_tetap
            if ($request->hasFile('surat_tetap_file')) {
                $file = $request->file('surat_tetap_file');
                $fileName = $file->getClientOriginalName();
                $surat_tetapPath = 'surat_tetap/' . $fileName;
    
                // Pindahkan file ke public/surat_tetap
                $file->move(public_path('surat_tetap'), $fileName);
            }
    
            // Simpan data ke database
            Surat_tetap_promosi::create([
                'worker_id'         => $validated['worker_id'],
                'tgl_surat_tetap'   => $validated['tgl_surat_tetap'], // Pastikan nama field sudah sesuai
                'surat_tetap_file'  => $surat_tetapPath ?? null, // Simpan path file yang benar
            ]);
    
            return redirect()->route('surat_tetap_promosis.index')->with('success', 'Data Surat Tetap berhasil disimpan');
        } catch (\Exception $e) {
            \Log::error('Surat Tetap Store Error: ' . $e->getMessage());
            return redirect()->back()->withInput()->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }
    

    /**
     * Display the specified resource.
     */
    public function show(Surat_tetap_promosi $surat_tetap_promosi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Surat_tetap_promosi $surat_tetap_promosi)
    {
        $worker = Worker::all();
        return view('surat_tetap_promosis.edit',compact('surat_tetap_promosi','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Surat_tetap_promosi $surat_tetap_promosi)
    {
        DB::beginTransaction();
        try {
            // Validasi input untuk worker_id dan file upload
            $validated = $request->validate([
                'worker_id'         => 'required|integer|exists:workers,id', // Pastikan worker_id ada di tabel workers
                'tgl_surat_tetap'   => 'required|date',
                'surat_tetap_file'  => 'nullable|mimes:pdf|max:50000',     // Surat Tetap File bersifat optional saat update
            ]);
    
            // Update worker_id dan tanggal surat tetap
            $surat_tetap_promosi->worker_id = $validated['worker_id'];
            $surat_tetap_promosi->tgl_surat_tetap = $validated['tgl_surat_tetap'];
    
            // Cek jika ada file baru yang di-upload
            if ($request->hasFile('surat_tetap_file')) {
                // Hapus file lama jika ada
                if ($surat_tetap_promosi->surat_tetap_file && file_exists(public_path('surat_tetap/' . $surat_tetap_promosi->surat_tetap_file))) {
                    unlink(public_path('surat_tetap/' . $surat_tetap_promosi->surat_tetap_file)); // Hapus file lama
                }
    
                // Upload file baru
                $file = $request->file('surat_tetap_file');
                $fileName = $file->getClientOriginalName();
                $surat_tetapPath = 'surat_tetap/' . $fileName;
    
                // Pindahkan file baru ke folder public/surat_tetap
                $file->move(public_path('surat_tetap'), $fileName);
    
                // Update path file di database
                $surat_tetap_promosi->surat_tetap_file = $surat_tetapPath;
            }
    
            // Simpan perubahan ke database
            $surat_tetap_promosi->save();
    
            DB::commit();
            return redirect()->route('surat_tetap_promosis.index')->with('success', 'Data Surat Tetap berhasil diperbarui');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('surat_tetap_promosis.index')->with('error', 'Terjadi kesalahan saat memperbarui data');
        }
    }
    

    public function destroy(Surat_tetap_promosi $surat_tetap_promosi)
    {
        DB::beginTransaction();
        try {
            // Hapus file terkait jika ada
            if ($surat_tetap_promosi->surat_tetap_file && file_exists(public_path('surat_tetap/' . $surat_tetap_promosi->surat_tetap_file))) {
                unlink(public_path('surat_tetap/' . $surat_tetap_promosi->surat_tetap_file)); // Hapus file
            }

            // Hapus data dari database
            $surat_tetap_promosi->delete();

            DB::commit();
            return redirect()->route('surat_tetap_promosis.index')->with('success', 'Data Surat Tetap berhasil dihapus');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('surat_tetap_promosis.index')->with('error', 'Terjadi kesalahan saat menghapus data');
        }
    }

}
