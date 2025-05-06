<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Etiket extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'tiket_file', 'tgl_tiket'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
