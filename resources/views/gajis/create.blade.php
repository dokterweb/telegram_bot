@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Tambah Karyawan</h1>
@stop

@section('content')

<div class="card card-primary">
    <div class="card-header">
    <h3 class="card-title">Isi Form</h3>
    </div>
    <form method="POST" action="{{route('gajis.store')}}">
        @csrf
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Karyawan</label>
                        <select class="form-control select2" name="worker_id">
                            <option value="">Pilih Karyawan</option>
                            @foreach ($worker as $p)
                            <option value="{{ $p->id }}" {{ old('worker_id') == $p->id ? 'selected' : '' }}>{{ $p->user->name }}</option>
                            @endforeach
                        </select>
                        @error('worker_id')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Tanggal</label>
                        <input type="date" name="tgl_slip" class="form-control" value="{{ old('tgl_slip') }}">
                        @error('tgl_slip')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="border border-2 border-primary p-3 rounded">
                <h3>Penerimaan</h3>
                <hr style="border: 1px solid red; margin-top: 20px; margin-bottom: 20px;">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Gaji Pokok</label>
                            <input type="number" name="gajipokok" class="form-control" value="{{ old('gajipokok') }}">
                            @error('gajipokok')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tunjangan PPh</label>
                            <input type="number" name="tunjangan_pph" class="form-control" value="{{ old('tunjangan_pph') }}">
                            @error('tunjangan_pph')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Lembur</label>
                            <input type="number" name="lembur" class="form-control" value="{{ old('lembur') }}">
                            @error('lembur')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Insentif Produksi Operator</label>
                            <input type="number" name="insentif_produksi_operator" class="form-control" value="{{ old('insentif_produksi_operator') }}">
                            @error('insentif_produksi_operator')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Iuran Jamsostek 5.74%</label>
                            <input type="number" name="iuran_jamsostek" class="form-control" value="{{ old('iuran_jamsostek') }}">
                            @error('iuran_jamsostek')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Iuran BPJS Kes 4%</label>
                            <input type="number" name="iuran_bpjs" class="form-control" value="{{ old('iuran_bpjs') }}">
                            @error('iuran_bpjs')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Iuran JP</label>
                            <input type="number" name="iuran_jp" class="form-control" value="{{ old('iuran_jp') }}">
                            @error('iuran_jp')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Total Overtime</label>
                            <input type="number" name="total_overtime" class="form-control" value="{{ old('total_overtime') }}">
                            @error('total_overtime')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                </div>
            </div><div class="border border-2 border-primary p-3 mt-3 rounded">
                <h3>Potongan</h3>
                <hr style="border: 1px solid red; margin-top: 20px; margin-bottom: 20px;">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pajak PPh21</label>
                            <input type="number" name="pajak_pph21" class="form-control" value="{{ old('pajak_pph21') }}">
                            @error('pajak_pph21')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pot Iuran Jamsostek 5.74%</label>
                            <input type="number" name="pot_iuran_jamsostek" class="form-control" value="{{ old('pot_iuran_jamsostek') }}">
                            @error('pot_iuran_jamsostek')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pot JHT 2%</label>
                            <input type="number" name="pot_jht" class="form-control" value="{{ old('pot_jht') }}">
                            @error('pot_jht')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pot BPJS Kes 4%</label>
                            <input type="number" name="pot_bpjs_kes4" class="form-control" value="{{ old('pot_bpjs_kes4') }}">
                            @error('pot_bpjs_kes4')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pot JP 2%</label>
                            <input type="number" name="pot_jp2" class="form-control" value="{{ old('pot_jp2') }}">
                            @error('pot_jp2')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pot BPJS Kes 1%</label>
                            <input type="number" name="pot_bpjs_kes1" class="form-control" value="{{ old('pot_bpjs_kes1') }}">
                            @error('pot_bpjs_kes1')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Pot JP 1%</label>
                            <input type="number" name="pot_jp1" class="form-control" value="{{ old('pot_jp1') }}">
                            @error('pot_jp1')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
        <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>

@stop

@section('css')
    {{-- Add here extra stylesheets --}}
    {{-- <link rel="stylesheet" href="/css/admin_custom.css"> --}}
    
    
@stop

@section('js')
    <script>
        $(function () {
            $('.select2').select2()
        });
        </script>
@stop