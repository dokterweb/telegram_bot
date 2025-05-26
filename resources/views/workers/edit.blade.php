@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Edit Karyawan</h1>
@stop

@section('content')

<div class="card card-primary">
    <div class="card-header">
    <h3 class="card-title">Edit Form</h3>
    </div>
    <form method="POST" action="{{route('workers.update',$worker->id)}}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Nama Karyawan</label>
                        <input type="text" name="name" class="form-control" value="{{ $worker->user->name }}">
                        @error('name')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >NIP</label>
                        <input type="text" name="nrp" class="form-control" value="{{ $worker->nrp }}">
                        @error('nrp')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Jabatan</label>
                        <input type="text" name="jabatan" class="form-control" value="{{ $worker->jabatan }}">
                        @error('jabatan')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Departemen</label>
                        <input type="text" name="departemen" class="form-control" value="{{$worker->jabatan}}">
                        @error('departemen')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Status</label>
                        <select name="staff" class="form-control" style="width:100%">
                            <option value="0" {{ $worker->staff == 0 ? 'selected' : '' }}>Non Aktif</option>
                            <option value="1" {{ $worker->staff == 1 ? 'selected' : '' }}>Aktif</option>
                        </select>
                        @error('staff')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>tempat_lahir</label>
                        <input type="text" name="tempat_lahir" class="form-control" value="{{ $worker->tempat_lahir }}">
                        @error('tempat_lahir')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >tanggal_lahir</label>
                        <input type="date" name="tanggal_lahir" class="form-control" value="{{ $worker->tanggal_lahir }}">
                        @error('tanggal_lahir')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >tgl_masuk_kerja</label>
                        <input type="date" name="tgl_masuk_kerja" class="form-control" value="{{ $worker->tgl_masuk_kerja }}">
                        @error('tgl_masuk_kerja')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >no_hp</label>
                        <input type="text" name="no_hp" class="form-control" value="{{ $worker->no_hp }}">
                        @error('no_hp')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Status</label>
                        <select name="is_active" class="form-control" style="width:100%">
                            <option value="0" {{ $worker->is_active == 0 ? 'selected' : '' }}>Non Aktif</option>
                            <option value="1" {{ $worker->is_active == 1 ? 'selected' : '' }}>Aktif</option>
                        </select>
                        @error('is_active')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Email</label>
                        <input type="text" name="email" class="form-control" value="{{ $worker->user->email }}">
                        @error('email')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label >Password</label>
                        <input type="password" name="password" class="form-control">
                        @error('password')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                    
                <div class="col-md-6">
                    @if ($worker->user->avatar)
                    <img src="{{Storage::url($worker->user->avatar)}}" alt="Girl in a jacket" width="200">
                    @endif
                    <div class="form-group">
                        <label for="exampleInputFile">Gambar</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" name="avatar" class="custom-file-input">
                                <label class="custom-file-label">Choose file</label>
                            </div>
                        </div>
                        @error('avatar')
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
    <script> console.log("Hi, I'm using the Laravel-AdminLTE package!"); </script>
@stop