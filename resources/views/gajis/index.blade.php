@extends('adminlte::page')

@section('title', 'Gaji Karyawan')

@section('content_header')
    <h1>Gaji</h1>
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
    <h3 class="card-title">List Gaji</h3>
        <div class="card-tools">
        <a href="{{route('gajis.create')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Tambah
        </a>
      </div>
    </div>
    <div class="card-body">
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>NRP</th>
                    <th>Nama Karyawan</th>
                    <th>File Gaji</th>
                    <th>Periode</th>
                    {{-- <th>Action</th> --}}
                </tr>
            </thead>
            <tbody>
            @forelse ($gajis as $p)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{ $p->worker->nrp }}</td>
                    <td>{{ $p->worker->user->name ?? 'N/A' }}</td>
                    <td><a href="{{ Storage::url($p->path_file) }}" target="_blank" class="btn btn-danger">Download</a>
                    <td>{{ \Carbon\Carbon::parse($p->periode)->format('d-m-Y') }}</td>
                    </td>
                    
                    {{-- <td class="d-flex align-items-center" style="gap: 5px;">
                        <a href="{{route('gajis.show',$p->id)}}" class="btn btn-sm btn-success"><i class="fas fa-eye"></i></a>
                        <a href="{{route('gajis.edit',$p->id)}}" class="btn btn-sm btn-info"><i class="far fa-edit"></i></a>
                        <form action="{{route('gajis.destroy',$p->id)}}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"> </i>
                            </button>
                        </form>
                    </td> --}}
                </tr>
            @empty
            <tr>
                <td colspan="6">No Data</td>
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