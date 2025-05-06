<?php

namespace App\Http\Controllers;

use Log;
use App\Models\Bpj;
use App\Models\Worker;
use Illuminate\Http\Request;
use App\Http\Requests\StoreBpjRequest;
use App\Http\Requests\UpdateBpjRequest;
use Illuminate\Support\Facades\Storage;

class BpjController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $bpjs = Bpj::with('worker.user')->get();
        return view('bpjs.index',compact('bpjs'));//
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('bpjs.create',compact('worker'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreBpjRequest $request)
    {
        try {
            // Simpan file BPJS Tenaga Kerja
            if ($request->hasFile('tenagakerja_file')) {
                $tenagakerjaPath = $request->file('tenagakerja_file')->store('bpjs/tenagakerja', 'public');
            }
    
            // Simpan file BPJS Kesehatan
            if ($request->hasFile('kesehatan_file')) {
                $kesehatanPath = $request->file('kesehatan_file')->store('bpjs/kesehatan', 'public');
            }
    
            // Simpan ke database
            Bpj::create([
                'worker_id'         => $request->worker_id,
                'tenagakerja_file'  => $tenagakerjaPath ?? null,
                'kesehatan_file'    => $kesehatanPath ?? null,
            ]);
    
            return redirect()->route('bpjs.index')->with('success', 'Data BPJS berhasil disimpan');
        } catch (\Exception $e) {
            \Log::error('BPJS Store Error: ' . $e->getMessage());
            return redirect()->back()->withInput()->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Bpj $bpj)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Bpj $bpj)
    {
        $worker = Worker::all();
        return view('bpjs.edit',compact('bpj','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBpjRequest $request, Bpj $bpj)
    {
        try {
            $data = [
                'worker_id' => $request->worker_id,
            ];
    
            // Ganti file tenaga kerja jika ada upload baru
            if ($request->hasFile('tenagakerja_file')) {
                if ($bpj->tenagakerja_file && Storage::disk('public')->exists($bpj->tenagakerja_file)) {
                    Storage::disk('public')->delete($bpj->tenagakerja_file);
                }
                $data['tenagakerja_file'] = $request->file('tenagakerja_file')->store('bpjs/tenagakerja', 'public');
            }
    
            // Ganti file kesehatan jika ada upload baru
            if ($request->hasFile('kesehatan_file')) {
                if ($bpj->kesehatan_file && Storage::disk('public')->exists($bpj->kesehatan_file)) {
                    Storage::disk('public')->delete($bpj->kesehatan_file);
                }
                $data['kesehatan_file'] = $request->file('kesehatan_file')->store('bpjs/kesehatan', 'public');
            }
    
            $bpj->update($data);
    
            return redirect()->route('bpjs.index')->with('success', 'Data BPJS berhasil diperbarui');
        } catch (\Exception $e) {
            \Log::error('BPJS Update Error: ' . $e->getMessage());
            return redirect()->back()->withInput()->with('error', 'Terjadi kesalahan saat memperbarui data');
        }
    }

    public function destroy($id)
    {
        try {
            Log::info("Deleting BPJ with ID: " . $id);
            $bpj = Bpj::findOrFail($id);
            \Log::info("Found BPJ: " . $bpj->id);
            $bpj->delete();

            return redirect()->route('bpjs.index')
                ->with('success', 'Data BPJS berhasil dihapus!');
        } catch (\Exception $e) {
            \Log::error('Gagal hapus BPJS: ' . $e->getMessage());
            return redirect()->route('bpjs.index')
                ->with('error', 'Gagal menghapus BPJS: ' . $e->getMessage());
        }
    }

}
