<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Suratlain extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id', 'suratlain_file','tgl_mintasurat','keterangan'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
