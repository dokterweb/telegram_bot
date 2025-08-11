<?php

namespace App\Imports;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Worker;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class WorkersImport implements ToModel
{
    public function model(array $row)
    {
        // Ambil data berdasarkan index kolom (tanpa header Excel)
        $nrp              = $row[0];
        $nama             = $row[1];
        $jabatan          = $row[2];
        $departemen       = $row[3];
        $staff            = $row[4];
        $tempat_lahir     = $row[5];
        $tanggal_lahir    = $row[6];
        $tgl_masuk_kerja  = $row[7];
        $no_hp            = $row[8];
        $email            = $row[9];

         // Validasi dan pastikan nilai staff hanya '0' atau '1'
        if ($staff !== '0' && $staff !== '1') {
            $staff = '0';  // Default ke '0' jika nilai tidak valid
        }
        
        // Cek apakah data worker dengan nrp ini sudah ada
        $worker = Worker::where('nrp', $nrp)->first();

        if ($worker) {
            // Update worker
            $worker->update([
                'jabatan'         => $jabatan,
                'departemen'      => $departemen,
                'staff'           => $staff,
                'tempat_lahir'    => $tempat_lahir,
                'tanggal_lahir'   => Carbon::parse($tanggal_lahir),
                'tgl_masuk_kerja' => Carbon::parse($tgl_masuk_kerja),
                'no_hp'           => $no_hp,
                'is_active'       => '1',
            ]);

            // Update juga user terkait jika ada
            $user = $worker->user;
            if ($user) {
                $user->update([
                    'name'  => $nama,
                    'email' => $email,
                ]);
            }

        } else {
            // Buat user baru
            $user = User::create([
                'name'     => $nama,
                'email'    => $email,
                'password' => Hash::make('123123123'), // Password default, bisa diganti nanti
            ]);

            // Buat worker baru
            Worker::create([
                'user_id'         => $user->id,
                'nrp'             => $nrp,
                'jabatan'         => $jabatan,
                'departemen'      => $departemen,
                'staff'           => $staff,
                'tempat_lahir'    => $tempat_lahir,
                'tanggal_lahir'   => Carbon::parse($tanggal_lahir),
                'tgl_masuk_kerja' => Carbon::parse($tgl_masuk_kerja),
                'no_hp'           => $no_hp,
                'is_active'       => '1',
            ]);
        }

        // Kembalikan null karena kita tidak membuat model baru langsung dari return
        return null;
    }
    
}
