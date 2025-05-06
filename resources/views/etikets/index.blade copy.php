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
                        <form action="{{ route('etikets.destroy', $p->id) }}" method="POST" class="form-delete d-inline">
                            @csrf
                            @method('DELETE')
                            <button type="button" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></button>
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
      
        $(document).ready(function () {
            $('.btn-confirm-delete').on('click', function(e) {
                e.preventDefault();
                let form = $(this).closest('form');

                Swal.fire({
                    title: 'Apakah Anda yakin?',
                    text: "Data yang dihapus tidak bisa dikembalikan!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Ya, hapus!',
                    cancelButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit(); // ini akan memicu method POST + DELETE dengan benar
                    }
                });
            });

            @if(session('success'))
            Swal.fire({
                icon: 'success',
                title: 'Berhasil!',
                text: '{{ session('success') }}',
                timer: 2000,
                showConfirmButton: false
            });
            @endif

            @if(session('error'))
            Swal.fire({
                icon: 'error',
                title: 'Gagal!',
                text: '{{ session('error') }}',
                timer: 2000,
                showConfirmButton: false
            });
            @endif
        });


    </script>
@stop