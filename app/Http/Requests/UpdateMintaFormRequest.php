<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateMintaFormRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        return [
            'worker_id'     => ['required','integer'],
            'minta_form_file' => ['required', 'mimes:pdf', 'max:100000'],
        ];
    }
}
