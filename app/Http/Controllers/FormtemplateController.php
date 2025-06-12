<?php

namespace App\Http\Controllers;

use App\Models\Formtemplate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FormtemplateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $formnya = Formtemplate::all();
        return view('formtemplates.index',compact('formnya'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('formtemplates.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            // Validasi input untuk nama_file dan file upload
            $validated = $request->validate([
                'nama_file'     => 'required','string','max:255',
                'form_file'     => 'required|mimes:pdf|max:50000',     // Validasi file PDF
                'keterangan'    => 'required','string','max:255',
            ]);
    
            // Simpan file surat aktif ke folder public/surat_aktif
            if ($request->hasFile('form_file')) {
                $file = $request->file('form_file');
                $fileName = $file->getClientOriginalName();
                $form_filePath = 'form_file/' . $fileName;
    
                // Pindahkan file ke public/surat_aktif
                $file->move(public_path('form_file'), $fileName);
            }
    
            // Simpan ke database
            Formtemplate::create([
                'nama_file'     => $validated['nama_file'],
                'form_file'     => $form_filePath ?? null,
                'keterangan'    => $validated['keterangan'], // Perbaiki nama field
            ]);
    
            return redirect()->route('formtemplates.index')->with('success', 'Data Surat Aktif berhasil disimpan');
        } catch (\Exception $e) {
            \Log::error('Surat Aktif Store Error: ' . $e->getMessage());
            return redirect()->back()->withInput()->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Formtemplate $formtemplate)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Formtemplate $formtemplate)
    {
        return view('formtemplates.edit',compact('formtemplate'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Formtemplate $formtemplate)
    {
        DB::beginTransaction();
        try {
            // Validasi input untuk worker_id dan file upload
            $validated = $request->validate([
                'nama_file'     => 'required','string','max:255',
                'form_file'     => 'required|mimes:pdf|max:50000',     // Validasi file PDF
                'keterangan'    => 'required','string','max:255',
            ]);
    
            // Update worker_id dan tanggal surat tetap
            $formtemplate->nama_file    = $validated['nama_file'];
            $formtemplate->keterangan   = $validated['keterangan'];
    
            // Cek jika ada file baru yang di-upload
            if ($request->hasFile('form_file')) {
                // Hapus file lama jika ada
                if ($formtemplate->form_file && file_exists(public_path('form_file/' . $formtemplate->form_file))) {
                    unlink(public_path('form_file/' . $formtemplate->form_file)); // Hapus file lama
                }
    
                // Upload file baru
                $file = $request->file('form_file');
                $fileName = $file->getClientOriginalName();
                $form_filePath = 'form_file/' . $fileName;
    
                // Pindahkan file baru ke folder public/form_file
                $file->move(public_path('form_file'), $fileName);
    
                // Update path file di database
                $formtemplate->form_file = $form_filePath;
            }
    
            // Simpan perubahan ke database
            $formtemplate->save();
    
            DB::commit();
            return redirect()->route('formtemplates.index')->with('success', 'Data Surat Tetap berhasil diperbarui');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('formtemplates.index')->with('error', 'Terjadi kesalahan saat memperbarui data');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Formtemplate $formtemplate)
    {
        //
    }
}
