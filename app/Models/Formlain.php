<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Formlain extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'formlain_file','tgl_mintaform','keterangan'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
