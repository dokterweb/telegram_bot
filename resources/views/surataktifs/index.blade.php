@extends('adminlte::page')

@section('title', 'Surat Aktif')

@section('content_header')
    <h1>Surat Aktif</h1>
@stop

@section('content')

<div class="card">
    <div class="card-header">
    <h3 class="card-title">List Surat Aktif</h3>
        <div class="card-tools">
        <a href="{{route('surataktifs.create')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Tambah
        </a>
      </div>
    </div>
    <div class="card-body">
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama Karyawan</th>
                    <th>Surat Aktif File</th>
                    <th>Tanggal</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($surataktif as $p)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{ $p->worker->user->name ?? 'N/A' }}</td>
                    <td>{{ $p->surat_aktif_file }}</td>
                    <td>{{ \Carbon\Carbon::parse($p->tgl_surat_aktif)->format('d-m-Y') }}</td>
                    <td class="d-flex align-items-center" style="gap: 5px;">
                        <a href="{{route('surataktifs.edit',$p->id)}}" class="btn btn-sm btn-info"><i class="far fa-edit"></i></a>
                        <button type="button" class="btn btn-sm btn-danger btn-delete" data-id="{{ $p->id }}">
                            <i class="fas fa-trash-alt"></i>
                        </button>

                        <form id="delete-form-{{ $p->id }}" action="{{ route('surataktifs.destroy', $p->id) }}" method="POST" class="d-none">
                            @csrf
                            @method('DELETE')
                        </form>
                    </td>
                </tr>
            @empty
            <tr>
                <td colspan="4">No Data</td>
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
    
<!-- resources/views/layouts/app.blade.php atau layout utama -->

<script>
$(document).ready(function() {
    $('#paketTable').DataTable();
    // Handle delete button click
    $('.btn-delete').on('click', function() {
        var id = $(this).data('id');
        
        Swal.fire({
            title: 'Apakah Anda yakin?',
            text: "Data yang dihapus tidak dapat dikembalikan!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, hapus!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                // Submit form jika dikonfirmasi
                $('#delete-form-' + id).submit();
            }
        });
    });

    // Session notification
    @if(session('success'))
        Swal.fire({
            position: "top-end",
            icon: 'success',
            title: 'Sukses!',
            text: '{{ session('success') }}',
            timer: 3000,
            showConfirmButton: false
        });
    @endif

    @if(session('error'))
        Swal.fire({
            position: "top-end",
            icon: 'error',
            title: 'Gagal!',
            text: '{{ session('error') }}'
        });
    @endif
});
</script>
@stop