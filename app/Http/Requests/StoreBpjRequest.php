<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreBpjRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        return [
            'worker_id'     => ['required','integer'],
            'tenagakerja_file'    => ['required', 'mimes:pdf', 'max:50000'],
            'kesehatan_file'    => ['required', 'mimes:pdf', 'max:50000'],
        ];
    }
}
