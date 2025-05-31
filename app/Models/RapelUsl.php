<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class RapelUsl extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['worker_id','totalhadir', 'tarif', 'rapelan', 'totalusl'];

    //relasi ke usls (one to many)
    public function usls()
    {
        return $this->hasMany(Usl::class, 'rapel_usl_id');
    }

    public function worker()
    {
        return $this->belongsTo(Worker::class, 'worker_id');
    }

}
