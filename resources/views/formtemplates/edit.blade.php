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
    <form method="POST" action="{{route('formtemplates.update', $formtemplate->id)}}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Nama File</label>
                        <input type="text" name="nama_file" class="form-control" value="{{ $formtemplate->nama_file }}">
                        @error('nama_file')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    @if ($formtemplate->form_file)
                        <a href="{{ asset($formtemplate->form_file) }}" target="_blank" class="btn btn-danger">Download</a>
                    @endif
                    <div class="form-group">
                        <label for="exampleInputFile">Form File</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" name="form_file" class="custom-file-input">
                                <label class="custom-file-label">Choose file</label>
                            </div>
                        </div>
                        @error('form_file')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label >Keterangan</label>
                        <input type="text" name="keterangan" class="form-control" value="{{ $formtemplate->keterangan }}">
                        @error('keterangan')
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