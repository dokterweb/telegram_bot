@extends('adminlte::page')

@section('title', 'Survey')

@section('content_header')
    <h1>Survey</h1>
@stop

@section('content')

<div class="card">
    <div class="card-header">
    <h3 class="card-title">List Survey</h3>
        <div class="card-tools">
        <a href="{{route('suratlains.create')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Tambah
        </a>
      </div>
    </div>
    <div class="card-body">
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama Karyawan</th>
                    <th>Nilai</th>
                    <th>Tanggal</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($surveys as $p)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{ $p->worker->user->name ?? 'N/A' }}</td>
                        {{-- <td>{{ $p->survey_option ?? 'No Data' }}</td> --}}
                        <td>{{ $p->rating_category ?? 'No Category' }}</td> <!-- Menampilkan kategori rating -->
                        <td>{{ \Carbon\Carbon::parse($p->created_at)->format('d-m-Y') }}</td>
                    </tr>
                @empty
                <tr>
                    <td colspan="3">No Data</td>
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