@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Tambah E-Tiket</h1>
@stop

@section('content')

<div class="card card-primary">
    <div class="card-header">
    <h3 class="card-title">Isi Form</h3>
    </div>
    {{-- <pre>{{ dd($suratKerja) }}</pre> --}}
    <form method="POST" action="{{route('surat_tetap_promosis.update', $surat_tetap_promosi->id)}}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Karyawan</label>
                        <select class="form-control select2" name="worker_id" style="width: 100%;">
                            <option value="">Pilih Karyawan</option>
                            @foreach ($worker as $p)
                                <option value="{{ $p->id }}" {{ $surat_tetap_promosi->worker_id  == $p->id ? 'selected' : '' }}>{{ $p->user->name }}</option>
                            @endforeach
                        </select>
                        @error('worker_id')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label >Tgl Surat Aktif</label>
                        <input type="date" name="tgl_surat_tetap" class="form-control" value="{{ $surat_tetap_promosi->tgl_surat_tetap }}">
                        @error('tgl_surat_tetap')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    @if ($surat_tetap_promosi->surat_tetap_file)
                        <a href="{{ asset($surat_tetap_promosi->surat_tetap_file) }}" target="_blank" class="btn btn-danger">Download</a>
                    @endif
                    <div class="form-group">
                        <label for="exampleInputFile">Surat Aktif File</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" name="surat_tetap_file" class="custom-file-input">
                                <label class="custom-file-label">Choose file</label>
                            </div>
                        </div>
                        @error('surat_tetap_file')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
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