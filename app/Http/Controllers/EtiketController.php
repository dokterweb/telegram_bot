<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Log;
use App\Models\Etiket;
use App\Models\Worker;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use RealRashid\SweetAlert\Facades\Alert;
use App\Http\Requests\StoreEtiketRequest;
use App\Http\Requests\UpdateEtiketRequest;

class EtiketController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $etikets = Etiket::with('worker.user')->get();
        return view('etikets.index',compact('etikets'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('etikets.create',compact('worker'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEtiketRequest $request)
    {
        // dd($request->all()); 

        DB::beginTransaction();
        try {
            $validated = $request->validated();
    
            if($request->hasFile('tiket_file')){
                $tiket_filePath = $request->file('tiket_file')->store('tiket_files', 'public');
                $tiket_filePath = str_replace('public/', '', $tiket_filePath);
            }

            Etiket::create([
                'worker_id'   => $validated['worker_id'],
                'tgl_tiket'   => $validated['tgl_tiket'],
                'tiket_file'  => $tiket_filePath ?? null,
            ]);
    
            DB::commit();
            return redirect()->route('etikets.index')->with('success', 'Data Karyawan berhasil disimpan!');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('etikets.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Etiket $etiket)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Etiket $etiket)
    {
        $worker = Worker::all();
        return view('etikets.edit',compact('etiket','worker'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateEtiketRequest $request, Etiket $etiket)
    {
            DB::beginTransaction();
        try {
            $validated = $request->validated();

            if ($request->hasFile('tiket_file')) {
                // Hapus file lama dulu kalau ada
                if ($etiket->tiket_file && Storage::disk('public')->exists($etiket->tiket_file)) {
                    Storage::disk('public')->delete($etiket->tiket_file);
                }

                // Upload file baru
                $tiket_filePath = $request->file('tiket_file')->store('tiket_files', 'public');
                $tiket_filePath = str_replace('public/', '', $tiket_filePath);
            } else {
                // Kalau tidak upload file baru, gunakan file lama
                $tiket_filePath = $etiket->tiket_file;
            }

            $etiket->update([
                'worker_id'   => $validated['worker_id'],
                'tgl_tiket'   => $validated['tgl_tiket'],
                'tiket_file'  => $tiket_filePath,
            ]);

            DB::commit();
            return redirect()->route('etikets.index')->with('success', 'Data Karyawan berhasil di update!');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Gagal update Etiket', ['error' => $e->getMessage()]);
            return redirect()->route('etikets.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    public function destroy($id)
    {
        try {
            $etiket = Etiket::findOrFail($id);
            $etiket->delete();
            
            return redirect()->route('etikets.index')
                ->with('success', 'Data etiket berhasil dihapus!');
                
        } catch (\Exception $e) {
            return redirect()->route('etikets.index')
                ->with('error', 'Gagal menghapus etiket: ' . $e->getMessage());
        }
    }
}
