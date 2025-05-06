<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Worker;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
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
        $validated = $request->validated();

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
            'user_id'       => $user->id,
            'nip'           => $validated['nip'],
            'jabatan'       => $validated['jabatan'],
            'is_active'        => '1',
        ]);

        return redirect()->route('workers.index')->with('success', 'Data Karyawan berhasil disimpan!');
    }

    public function show(Worker $worker)
    {
        //
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
            'nip'           => $validated['nip'],
            'jabatan'       => $validated['jabatan'],
            'is_active'     => $validated['is_active'] // Diambil dari validated data
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
}
