<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Bpj extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'tenagakerja_file', 'kesehatan_file'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
