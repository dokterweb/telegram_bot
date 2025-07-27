@extends('adminlte::page')

@section('title', 'Karyawan')

@section('content_header')
    <h1>Karyawan</h1>
@stop

@section('content')

@if($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="card">
    <div class="card-header">
    <h3 class="card-title">List Karyawan</h3>
        <div class="card-tools">
        <a href="{{route('workers.create')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Tambah
        </a>
      </div>
    </div>
    <div class="card-body">
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th>Nama Karyawan</th>
                    <th>NRP</th>
                    <th>Jabatan</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($workers as $p)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$p->id}} </td>
                    <td>{{$p->user->name}} </td>
                    <td>{{$p->nrp}} </td>
                    <td>{{$p->jabatan}} </td>
                    <td class="d-flex align-items-center" style="gap: 5px;">
                        <a href="{{route('workers.show',$p->id)}}" class="btn btn-sm btn-success"><i class="fas fa-eye"></i></a>
                        <a href="{{route('workers.edit',$p->id)}}" class="btn btn-sm btn-info"><i class="far fa-edit"></i></a>
                        <form action="{{route('workers.destroy',$p->id)}}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"> </i>
                            </button>
                        </form>
                    </td>
                </tr>
            @empty
            <tr>
                <td colspan="5">No Data</td>
            </tr>
            @endforelse
            </tbody>
        </table>
    </div>
</div>
@stop

@section('css')
    
@stop

@section('js')
    
    <script>
        $(document).ready(function () {
          $('#paketTable').DataTable();
        });
       // Tampilkan SweetAlert jika ada pesan sukses
        @if(session()->has('success'))
            Swal.fire({
                icon: 'success',
                title: 'Berhasil!',
                text: '{{ session('success') }}',
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000
            });
        @endif
                
        
    </script>
@stop