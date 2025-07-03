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
                    <td><a href="{{ asset($p->path_file) }}" target="_blank" class="btn btn-info"><i class="fas fa-file-pdf"></i>Download</a></td>
                    <td>{{ \Carbon\Carbon::parse($p->periode)->format('d-m-Y') }}</td>
                    <td> 
                        <form action="{{ route('gajis.destroy', $p->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i>Hapus</button>
                        </form>
                    </td>
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