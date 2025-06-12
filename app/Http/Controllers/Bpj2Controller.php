<?php

namespace App\Http\Controllers;

use App\Models\Bpj2;
use App\Models\Worker;
use Illuminate\Http\Request;

class Bpj2Controller extends Controller
{
    public function index()
    {
        // Mengambil semua data BPJS dari tabel bpjs menggunakan model Bpj2
        $bpjs = Bpj2::with('worker.user')->get();

        // Menampilkan data ke view
        return view('bpjs.index', compact('bpjs'));
    }

    public function create()
    {
        $worker = Worker::all();
        return view('bpjs.create',compact('worker'));
    }

    public function store(Request $request)
    {
        try {
            // Validasi input untuk worker_id dan file upload
            $request->validate([
                'worker_id' => 'required|integer|exists:workers,id', // Pastikan worker_id ada di tabel workers
                'tenagakerja_file' => 'required|mimes:pdf|max:50000',  // Validasi file BPJS Tenaga Kerja
                'kesehatan_file' => 'required|mimes:pdf|max:50000',     // Validasi file BPJS Kesehatan
            ]);

            // Simpan file BPJS Tenaga Kerja ke folder public/bpjs/tenagakerja
            if ($request->hasFile('tenagakerja_file')) {
                $tenagakerjaFile = $request->file('tenagakerja_file');
                $tenagakerjaFileName = $tenagakerjaFile->getClientOriginalName();
                $tenagakerjaPath = 'bpjs/tenagakerja/' . $tenagakerjaFileName;

                // Pindahkan file ke public/bpjs/tenagakerja
                $tenagakerjaFile->move(public_path('bpjs/tenagakerja'), $tenagakerjaFileName);
            }

            // Simpan file BPJS Kesehatan ke folder public/bpjs/kesehatan
            if ($request->hasFile('kesehatan_file')) {
                $kesehatanFile = $request->file('kesehatan_file');
                $kesehatanFileName = $kesehatanFile->getClientOriginalName();
                $kesehatanPath = 'bpjs/kesehatan/' . $kesehatanFileName;

                // Pindahkan file ke public/bpjs/kesehatan
                $kesehatanFile->move(public_path('bpjs/kesehatan'), $kesehatanFileName);
            }

            // Simpan ke database
            Bpj2::create([
                'worker_id'         => $request->worker_id,
                'tenagakerja_file'  => $tenagakerjaPath ?? null,
                'kesehatan_file'    => $kesehatanPath ?? null,
            ]);

            return redirect()->route('bpjs2.index')->with('success', 'Data BPJS berhasil disimpan');
        } catch (\Exception $e) {
            \Log::error('BPJS Store Error: ' . $e->getMessage());
            return redirect()->back()->withInput()->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    public function edit($id)
    {
        $bpjs = Bpj2::findOrFail($id);
        $worker = Worker::all();
        return view('bpjs.edit', compact('bpjs', 'worker'));
    }

    public function update(Request $request, $id)
    {
        // Validasi input
        $request->validate([
            'worker_id' => 'required|integer|exists:workers,id',
            'tenagakerja_file' => 'nullable|mimes:pdf|max:50000',
            'kesehatan_file' => 'nullable|mimes:pdf|max:50000',
        ]);
    
        // Ambil data BPJS yang akan diupdate
        $bpjs = Bpj2::findOrFail($id);
    
        // Update data worker_id
        $bpjs->worker_id = $request->worker_id;
    
        // Update file BPJS Tenaga Kerja jika ada
        if ($request->hasFile('tenagakerja_file')) {
            // Hapus file lama jika ada
            if (file_exists(public_path('bpjs/tenagakerja/' . $bpjs->tenagakerja_file))) {
                unlink(public_path('bpjs/tenagakerja/' . $bpjs->tenagakerja_file));
            }
    
            // Upload file baru
            $tenagakerjaFile = $request->file('tenagakerja_file');
            $tenagakerjaFileName = 'bpjs/tenagakerja/' . $tenagakerjaFile->getClientOriginalName();  // Menambahkan subfolder di path
            $tenagakerjaFile->move(public_path('bpjs/tenagakerja'), $tenagakerjaFileName); // Menyimpan ke subfolder yang sesuai
    
            // Update path file di database
            $bpjs->tenagakerja_file = $tenagakerjaFileName;
        }
    
        // Update file BPJS Kesehatan jika ada
        if ($request->hasFile('kesehatan_file')) {
            // Hapus file lama jika ada
            if (file_exists(public_path('bpjs/kesehatan/' . $bpjs->kesehatan_file))) {
                unlink(public_path('bpjs/kesehatan/' . $bpjs->kesehatan_file));
            }
    
            // Upload file baru
            $kesehatanFile = $request->file('kesehatan_file');
            $kesehatanFileName = 'bpjs/kesehatan/' . $kesehatanFile->getClientOriginalName();  // Menambahkan subfolder di path
            $kesehatanFile->move(public_path('bpjs/kesehatan'), $kesehatanFileName);  // Menyimpan ke subfolder yang sesuai
    
            // Update path file di database
            $bpjs->kesehatan_file = $kesehatanFileName;
        }
    
        // Simpan perubahan ke database
        $bpjs->save();
    
        // Redirect ke halaman index dengan pesan sukses
        return redirect()->route('bpjs2.index')->with('success', 'Data BPJS berhasil diperbarui');
    }
    

    public function destroy($id)
    {
        // Ambil data BPJS yang akan dihapus
        $bpjs = Bpj2::findOrFail($id);

        // Hapus file BPJS Tenaga Kerja jika ada
        if (file_exists(public_path('bpjs/tenagakerja/' . $bpjs->tenagakerja_file))) {
            unlink(public_path('bpjs/tenagakerja/' . $bpjs->tenagakerja_file));
        }

        // Hapus file BPJS Kesehatan jika ada
        if (file_exists(public_path('bpjs/kesehatan/' . $bpjs->kesehatan_file))) {
            unlink(public_path('bpjs/kesehatan/' . $bpjs->kesehatan_file));
        }

        // Hapus data BPJS dari database
        $bpjs->delete();

        // Redirect ke halaman index dengan pesan sukses
        return redirect()->route('bpjs2.index')->with('success', 'Data BPJS berhasil dihapus');
    }


}
