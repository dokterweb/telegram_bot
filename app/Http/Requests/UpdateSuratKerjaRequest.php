<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateSuratKerjaRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        return [
            'worker_id'     => ['required','integer'],
            'surat_kerja_file' => ['required', 'mimes:pdf', 'max:100000'],
        ];
    }
}
