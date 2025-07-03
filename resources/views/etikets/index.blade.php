@extends('adminlte::page')

@section('title', 'Gaji Karyawan')

@section('content_header')
    <h1>Gaji</h1>
@stop

@section('content')

{{-- @if (session('success'))
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Sukses',
            text: '{{ session('success') }}',
        });
    </script>
@endif

@if (session('error'))
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Gagal',
            text: '{{ session('error') }}',
        });
    </script>
@endif --}}


<div class="card">
    <div class="card-header">
    <h3 class="card-title">List Etiket</h3>
        <div class="card-tools">
        <a href="{{route('etikets.create')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Tambah
        </a>
      </div>
    </div>
    <div class="card-body">
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama Karyawan</th>
                    <th>Tiketnya</th>
                    <th>Tgl Tiket</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($etikets as $p)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{ $p->worker->user->name ?? 'N/A' }}</td>
                    <td>{{ $p->tiket_file }}</td>
                    <td>{{ $p->tgl_tiket }}</td>
                    <td class="d-flex align-items-center" style="gap: 5px;">
                        <a href="{{route('etikets.edit',$p->id)}}" class="btn btn-sm btn-info"><i class="far fa-edit"></i></a>
                       <!-- resources/views/etikets/index.blade.php atau halaman Anda -->
                        <button type="button" class="btn btn-sm btn-danger btn-delete" data-id="{{ $p->id }}">
                            <i class="fas fa-trash-alt"></i>
                        </button>

                        <!-- Form Delete (hidden) -->
                        <form id="delete-form-{{ $p->id }}" action="{{ route('etikets.destroy', $p->id) }}" method="POST" class="d-none">
                            @csrf
                            @method('DELETE')
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
    
   

<!-- resources/views/layouts/app.blade.php atau layout utama -->
{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> --}}
{{-- <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> --}}

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