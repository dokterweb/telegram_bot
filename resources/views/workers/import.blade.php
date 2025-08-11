@extends('adminlte::page')

@section('title', 'Gaji Karyawan')

@section('content_header')
    <h1>BPJS</h1>
@stop

@section('content')

<div class="card">
    <div class="card-header">
    <h3 class="card-title">List BPJS</h3>
        <div class="card-tools">
        <a href="{{route('bpjs2.create')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Tambah
        </a>
      </div>
    </div>
    <div class="card-body">
        <form action="{{ route('workers.import.submit') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="file">Pilih File Excel</label>
            <input type="file" class="form-control" name="file" required>
        </div>
        <button type="submit" class="btn btn-primary mt-2">Upload</button>
    </form>
    </div>
</div>
@stop

@section('css')
    
@stop

@section('js')
    
@stop