<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Surat_tetap_promosi extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'surat_tetap_file', 'tgl_surat_tetap'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
