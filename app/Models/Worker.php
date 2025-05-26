<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Worker extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable=['user_id', 'nrp', 'jabatan', 'departemen', 'staff', 'tempat_lahir', 'tanggal_lahir', 'tgl_masuk_kerja', 'no_hp', 'is_active'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function gajis()
    {
        return $this->hasMany(Gaji::class);
    }
}
