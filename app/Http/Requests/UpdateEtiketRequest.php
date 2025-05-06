<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateEtiketRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        return [
            'worker_id'     => ['required','integer'],
            'tgl_tiket'     => ['required','date'],
            'tiket_file'    => ['required', 'mimes:pdf', 'max:100000'],
        ];
    }
}
