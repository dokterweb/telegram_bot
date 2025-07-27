<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CutiTahunan extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'jatahcuti','sisacuti','telahcuti','tgl_cutiterakhir'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
