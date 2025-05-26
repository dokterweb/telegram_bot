<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Overtime extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'nama_file', 'path_file', 'periode'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
