<?php

namespace App\Http\Requests;

use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;

class StoreWorkerRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        return [
            'name'              => ['required', 'string', 'max:255'],
            'nrp'               => ['required', 'string', 'max:255'],
            'jabatan'           => ['required', 'string', 'max:255'],
            'departemen'        => ['required', 'string', 'max:255'],
            'is_active'         => ['required', 'in:0,1'],
            'staff'             => ['required', 'in:0,1'],
            'tempat_lahir'      => ['required', 'string', 'max:255'],
            'tanggal_lahir'     => ['required', 'date'],
            'tgl_masuk_kerja'   => ['required', 'date'],
            'no_hp'             => ['required', 'string', 'max:100'],
            'avatar'            => ['required','image','mimes:png,jpg,jpeg'],
            'email'             => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:'.User::class],
            'password'          => ['required', 'string', 'min:6'],
        ];
    }
}
