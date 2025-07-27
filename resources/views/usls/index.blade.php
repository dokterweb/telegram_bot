@extends('adminlte::page')

@section('title', 'USL Karyawan')

@section('content_header')
    <h1>USL</h1>
@stop

@section('content')
@if ($errors->any())
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
        <h3 class="card-title">USL</h3>
    </div>
    <div class="card-body">
        <form action="{{ route('usls.import') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="file">Upload Excel</label>
                <input type="file" name="file" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary mt-2">Import</button>
        </form>
        <hr>
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>NRP</th>
                    <th>Nama Karyawan</th>
                    <th>Tanggal</th>
                    <th>IN</th>
                    <th>OUT</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($usls as $p)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{ $p->worker->nrp ?? 'N/A' }}</td>
                        <td>{{ $p->worker->user->name ?? 'N/A' }}</td>
                        <td>{{ $p->tanggal }}</td>
                        <td>{{ $p->in }}</td>
                        <td>{{ $p->out }}</td>
                        <td>{{ $p->status }}</td>
                        <td class="d-flex align-items-center" style="gap: 5px;">
                            <button class="btn btn-warning btn-sm btn-edit"
                                data-id="{{ $p->id }}"
                                data-nama="{{ $p->worker->user->name ?? '-' }}"
                                data-tanggal="{{ $p->tanggal }}"
                                data-in="{{ $p->in }}"
                                data-out="{{ $p->out }}"
                                data-status="{{ $p->status }}"
                                data-toggle="modal"
                                data-target="#editModal">
                                Edit
                            </button>
                            <button type="button" class="btn btn-sm btn-danger btn-delete" data-id="{{ $p->id }}">
                                <i class="fas fa-trash-alt"></i>
                            </button>

                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="7">No Data</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>

<!-- Modal Edit -->

    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        {{-- <form method="POST" action="{{ route('usls.update') }}"> --}}
            <form method="POST" id="form-edit" action="">

            @csrf
            @method('PUT')
            <input type="hidden" name="id" id="usl_id">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Data Cuti</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nama</label>
                        <input type="text" id="nama" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label>Tanggal</label>
                        <input type="date" name="tanggal" id="tanggal" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>IN</label>
                        <input type="time" name="in" id="in" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>OUT</label>
                        <input type="time" name="out" id="out" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Status</label>
                        <select name="status" id="status" class="form-control" style="width:100%">
                            <option value="D">Day</option>
                            <option value="N">Night</option>
                            <option value="DN">Day Night</option>
                            <option value="OFFON">OFF ON</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </div>
        </form>
        </div>
    </div>
   
@stop

@section('css')
    
@stop

@section('js')
    
<!-- resources/views/layouts/app.blade.php atau layout utama -->

<script>
    $(document).ready(function () {
        $('#paketTable').DataTable();
    });

     // Isi form edit ketika tombol diklik
     $(document).on('click', '.btn-edit', function () {
        let id = $(this).data('id');
        $('#form-edit').attr('action', '/usls/' + id); // set URL action sesuai ID
        $('#usl_id').val(id);
        $('#nama').val($(this).data('nama'));
        $('#tanggal').val($(this).data('tanggal'));
        // Ambil HH:MM saja dari data waktu
        $('#in').val($(this).data('in').substring(0,5));
        $('#out').val($(this).data('out').substring(0,5));
        $('#status').val($(this).data('status'));
    });

    $(document).ready(function() {
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