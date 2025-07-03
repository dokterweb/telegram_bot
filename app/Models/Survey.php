<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Survey extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id','survey_option'];

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }
}
