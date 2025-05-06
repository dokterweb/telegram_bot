<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreGajiRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->hasAnyRole(['admin']);
    }

    public function rules(): array
    {
        return [
            'worker_id'                     => ['required','integer'],
            'tgl_slip'                      => ['required','date'],
            'gajipokok'                     => ['required','integer'],
            'tunjangan_pph'                 => ['required','integer'],
            'lembur'                        => ['required','integer'],
            'insentif_produksi_operator'    => ['required','integer'],
            'iuran_jamsostek'               => ['required','integer'],
            'iuran_bpjs'                    => ['required','integer'],
            'iuran_jp'                      => ['required','integer'],
            'total_overtime'                => ['required','integer'],
            'pajak_pph21'                   => ['required','integer'],
            'pot_iuran_jamsostek'           => ['required','integer'],
            'pot_jht'                       => ['required','integer'],
            'pot_bpjs_kes4'                 => ['required','integer'],
            'pot_jp2'                       => ['required','integer'],
            'pot_bpjs_kes1'                 => ['required','integer'],
            'pot_jp1'                       => ['required','integer'],
        ];
    }
}
