<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Worker;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\WorkersImport;
use App\Http\Requests\StoreWorkerRequest;
use App\Http\Requests\UpdateWorkerRequest;

class WorkerController extends Controller
{
    public function index()
    {
        $workers = Worker::all();
        return view('workers.index',compact('workers'));
    }

    public function create()
    {
        return view('workers.create');
    }

    public function store(StoreWorkerRequest $request)
    {
        \Log::info('Store Worker Request Received', ['data' => $request->all()]);

        try {
            $validated = $request->validated();
            \Log::info('Validation Passed', ['data' => $validated]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            \Log::error('Validation Failed', ['errors' => $e->errors()]);
            return back()->withErrors($e->errors())->withInput();
        }

        DB::beginTransaction();

        try {
            // Simpan avatar jika ada
            $avatarPath = null;
            if ($request->hasFile('avatar')) {
                $avatarPath = $request->file('avatar')->store('avatars', 'public');
            }

            // Buat user baru
            $user = User::create([
                'name' => $validated['name'],
                'email' => $validated['email'],
                'avatar' => $avatarPath,
                'password' => Hash::make($validated['password']),
            ]);

            $user->assignRole('worker');

            // Susun data worker
            $workerData = [
                'user_id'         => $user->id,
                'nrp'             => $validated['nrp'],
                'jabatan'         => $validated['jabatan'],
                'departemen'      => $validated['departemen'] ?? null,
                'staff'           => $validated['staff'] ?? null,
                'tempat_lahir'    => $validated['tempat_lahir'] ?? null,
                'tanggal_lahir'   => $validated['tanggal_lahir'] ?? null,
                'tgl_masuk_kerja' => $validated['tgl_masuk_kerja'] ?? null,
                'no_hp'           => $validated['no_hp'] ?? null,
                'is_active'       => $validated['is_active'],
            ];

            \Log::info('Worker Data to be Inserted', $workerData); // ⬅ Tambahan penting

            Worker::create($workerData);

            DB::commit();

            return redirect()->route('workers.index')->with('success', 'Data karyawan berhasil disimpan!');
        } catch (\Exception $e) {
            DB::rollBack();
            \Log::error('Worker Creation Failed', [
                'error' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
                'worker_data' => $workerData ?? null, // ⬅ Tambahan penting
            ]);
            return back()->withInput()->with('error', 'Gagal menyimpan: '.$e->getMessage());
        }
    }


    /* 
    public function store(StoreWorkerRequest $request)
    {
        $validated = $request->validated();
        dd($validated); // <-- Lihat apakah nrp ada di sini
        // Simpan avatar jika ada
        if($request->hasFile('avatar')){
            $avatarPath = $request->file('avatar')->store('avatars','public');
        }

        // Buat user baru
        $user = User::create([
            'name'      => $validated['name'],
            'email'     => $validated['email'],
            'avatar'    => $avatarPath ?? null, // Jika tidak ada avatar, nilainya null
            'password'  => Hash::make($validated['password']),
        ]);

        // Assign role 'siswa' ke user
        $user->assignRole('worker'); // Pastikan role 'siswa' sudah ada di database

        // Simpan data ke tabel siswas
        Worker::create([
            'user_id'           => $user->id,
            'nrp'               => $validated['nrp'], // <-- Pastikan ini sama dengan nama kolom di DB
            'jabatan'           => $validated['jabatan'],
            'departemen'        => $validated['departemen'],
            'staff'             => $validated['staff'],
            'tempat_lahir'      => $validated['tempat_lahir'],
            'tanggal_lahir'     => $validated['tanggal_lahir'],
            'tgl_masuk_kerja'   => $validated['tgl_masuk_kerja'],
            'no_hp'             => $validated['no_hp'],
            'is_active'         => $validated['is_active'],
        ]);
        
        return redirect()->route('workers.index')->with('success', 'Data Karyawan berhasil disimpan!');
    } */

    public function show(Worker $worker)
    {
        return  view('workers.show',compact('worker'));
    }

    public function edit(Worker $worker)
    {
        return view('workers.edit',compact('worker'));
    }

    public function update(UpdateWorkerRequest $request, Worker $worker)
    {
        // Data sudah divalidasi di UpdateSiswaRequest
        $validated = $request->validated();

        // Update data User terkait
        $userData = [
            'name'  => $validated['name'],
            'email' => $validated['email'],
        ];

        // Cek apakah password diisi, jika iya, update password
        if ($request->filled('password')) {
            $userData['password'] = bcrypt($validated['password']);
        }

        // Cek apakah ada file avatar yang diunggah
        if ($request->hasFile('avatar')) {
            // Simpan avatar ke storage dan update path-nya
            $avatarPath = $request->file('avatar')->store('avatars', 'public');
            $userData['avatar'] = $avatarPath;
        }

        // Update data user yang terkait dengan worker
        $worker->user->update($userData);

        // Simpan data ke tabel workers
        $worker->update([
            'nrp'             => $validated['nrp'],
            'jabatan'         => $validated['jabatan'],
            'departemen'      => $validated['departemen'] ?? null,
            'staff'           => $validated['staff'] ?? null,
            'tempat_lahir'    => $validated['tempat_lahir'] ?? null,
            'tanggal_lahir'   => $validated['tanggal_lahir'] ?? null,
            'tgl_masuk_kerja' => $validated['tgl_masuk_kerja'] ?? null,
            'no_hp'           => $validated['no_hp'] ?? null,
            'is_active'       => $validated['is_active'],
        ]);

        return redirect()->route('workers.index')->with('success', 'Data Karyawan berhasil diperbarui!');
    }

    public function destroy(Worker $worker)
    {
        DB::beginTransaction();
        try {
            $worker->delete();
            DB::commit();
            return redirect()->route('workers.index')->with('success', 'Data Karyawan berhasil dihapus!');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('workers.index');
        }
    }

     // Fungsi untuk menampilkan form import
     public function showImportForm()
     {
         return view('workers.import');  // Sesuaikan dengan nama view untuk form import
     }

      // Fungsi untuk menangani import data
    public function import(Request $request)
    {
        // Validasi file
        $request->validate([
            'file' => 'required|mimes:xlsx,xls'  // Validasi file Excel
        ]);

        // Ambil file yang diupload
        $file = $request->file('file');

        // Menggunakan Laravel Excel untuk mengimpor data
        Excel::import(new WorkersImport, $file);

        // Setelah berhasil, redirect ke halaman workers
        return redirect()->route('workers.index')->with('success', 'Data workers berhasil diimport!');
    }
}
