<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bpj2 extends Model
{
     // Menentukan nama tabel yang akan digunakan oleh model ini
     protected $table = 'bpjs';  // Menggunakan tabel bpjs yang sudah ada

     // Menentukan kolom yang dapat diisi massal
     protected $fillable = [
         'worker_id',
         'tenagakerja_file',
         'kesehatan_file',
     ];
 
     // Jika tabel menggunakan timestamp, aktifkan ini. Jika tidak, matikan.
     public $timestamps = true;
 
     // Relasi dengan model Worker
     public function worker()
     {
         return $this->belongsTo(Worker::class);
     }
}
