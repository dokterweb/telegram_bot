@extends('adminlte::page')

@section('title', 'Detil')

@section('content_header')
    <h1>Detil</h1>
@stop

@section('content')
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">General</h3>
            <div class="card-tools">
            <a href="{{route('workers.index')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Data Worker</a>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <table class="table table-bordered table-striped">
                        <tbody>
                            <tr>
                                <td>Nama Karyawan</td>
                                <td>{{$worker->user->name}}</td>
                            </tr>
                            <tr>
                                <td>NRP</td>
                                <td>{{$worker->nrp}}</td>
                            </tr>
                            <tr>
                                <td>Jabatan</td>
                                <td>{{$worker->jabatan}}</td>
                            </tr>
                            <tr>
                                <td>Departemen</td>
                                <td>{{$worker->departemen}}</td>
                            </tr>
                            <tr>
                                <td>Staff</td>
                                <td>{{$worker->staff == '1' ? 'Staff' : 'Non Staff'}}</td>
                            </tr>
                            <tr>
                                <td>Tempat/Tgl Lahir</td>
                                <td>{{$worker->tempat_lahir.' / '.$worker->tanggal_lahir}}</td>
                            </tr>
                            <tr>
                                <td>Tgl Masuk Kerja</td>
                                <td>{{$worker->tgl_masuk_kerja}}</td>
                            </tr>
                            <tr>
                                <td>Status</td>
                                <td>{{$worker->is_active == '1' ? 'Aktif' : 'Non Aktif'}}</td>
                            </tr>
                            <tr>
                                <td>No HP</td>
                                <td>{{$worker->no_hp}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-6">
                    <img src="{{ ($worker->user->avatar != NULL) ? Storage::url($worker->user->avatar) : asset('images/default_avatar.png') }}" 
                    alt="Foto Profil {{ $worker->user->name ?? 'Karyawan' }}" 
                    class="img-fluid rounded-circle" 
                    style="width: 400px; height: 400px; object-fit: cover;">
                </div>
            </div>
            
        </div>
    </div>
@stop

@section('css')
    
@stop

@section('js')
    <script> console.log("Hi, I'm using the Laravel-AdminLTE package!"); </script>
@stop