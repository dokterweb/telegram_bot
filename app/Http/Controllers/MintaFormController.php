<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use App\Models\MintaForm;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StoreMintaFormRequest;
use App\Http\Requests\UpdateMintaFormRequest;

class MintaFormController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $mintaforms = MintaForm::with('worker.user')->get();
        return view('mintaforms.index',compact('mintaforms'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $worker = Worker::all();
        return view('mintaforms.create',compact('worker'));//
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreMintaFormRequest $request)
    {
        DB::beginTransaction();
        try {
            $validated = $request->validated();
    
            if($request->hasFile('minta_form_file')){
                $minta_form_filePath = $request->file('minta_form_file')->store('minta_form_files', 'public');
                $minta_form_filePath = str_replace('public/', '', $minta_form_filePath);
            }

            MintaForm::create([
                'worker_id'   => $validated['worker_id'],
                'minta_form_file'  => $minta_form_filePath ?? null,
            ]);
    
            DB::commit();
            return redirect()->route('mintaforms.index')->with('success', 'Data Surat Tugas berhasil disimpan!');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('mintaforms.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(MintaForm $mintaForm)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(MintaForm $mintaform)
    {
        $worker = Worker::all();
        return view('mintaforms.edit',compact('mintaform','worker'));
    }

    public function update(UpdateMintaFormRequest $request, MintaForm $mintaform)
    {
        DB::beginTransaction();
        try {
            $validated = $request->validated();

            if ($request->hasFile('minta_form_file')) {
                // Hapus file lama dulu kalau ada
                if ($mintaform->minta_form_file && Storage::disk('public')->exists($mintaform->minta_form_file)) {
                    Storage::disk('public')->delete($mintaform->minta_form_file);
                }

                // Upload file baru
                $minta_form_filePath = $request->file('minta_form_file')->store('minta_form_files', 'public');
                $minta_form_filePath = str_replace('public/', '', $minta_form_filePath);
            } else {
                // Kalau tidak upload file baru, gunakan file lama
                $minta_form_filePath = $mintaform->minta_form_file;
            }

            $mintaform->update([
                'worker_id'   => $validated['worker_id'],
                'minta_form_file'  => $minta_form_filePath,
            ]);

            DB::commit();
            return redirect()->route('mintaforms.index')->with('success', 'Data Permintaan Form berhasil di update!');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('mintaforms.index')->with('error', 'Terjadi kesalahan saat menyimpan data');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            $mintaform = MintaForm::findOrFail($id);
            $mintaform->delete();
            
            return redirect()->route('mintaforms.index')
                ->with('success', 'Data surattugas berhasil dihapus!');
                
        } catch (\Exception $e) {
            return redirect()->route('mintaforms.index')
                ->with('error', 'Gagal menghapus surattugas: ' . $e->getMessage());
        }
    }
}
