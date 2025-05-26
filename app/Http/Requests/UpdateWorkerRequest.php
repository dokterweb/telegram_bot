<?php

namespace App\Http\Requests;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class UpdateWorkerRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        $worker = $this->route('worker'); // Ambil siswa dari route parameter

        return [
            'name'          => ['required', 'string', 'max:255'],
            'nrp'               => ['required', 'string', 'max:255'],
            'jabatan'           => ['required', 'string', 'max:255'],
            'departemen'        => ['required', 'string', 'max:255'],
            'is_active'         => ['required', 'in:0,1'],
            'staff'             => ['required', 'in:0,1'],
            'tempat_lahir'      => ['required', 'string', 'max:255'],
            'tanggal_lahir'     => ['required', 'date'],
            'tgl_masuk_kerja'   => ['required', 'date'],
            'no_hp'             => ['required', 'string', 'max:100'],
            'avatar'            => ['nullable', 'image', 'mimes:png,jpg,jpeg', 'max:2048'],
            'email'             => [
                'required',
                'string',
                'lowercase',
                'email',
                'max:255',
                Rule::unique('users')->ignore($worker->user->id), // Abaikan email siswa yang sedang diupdate
            ],
            'password'      => ['nullable', 'min:8'],
        ];
    }
}
