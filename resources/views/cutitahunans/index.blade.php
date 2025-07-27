@extends('adminlte::page')

@section('title', 'Gaji Karyawan')

@section('content_header')
    <h1>Gaji</h1>
@stop

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">Cuti Tahunan</h3>
    </div>
    <div class="card-body">
        <form action="{{ route('cutiTahunans.import') }}" method="POST" enctype="multipart/form-data">
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
                    <th>Jatah Cuti</th>
                    <th>Telah Cuti</th>
                    <th>Sisa Cuti</th>
                    <th>Cuti Terakhir</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($cutitahunans as $p)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{ $p->worker->nrp ?? 'N/A' }}</td>
                    <td>{{ $p->worker->user->name ?? 'N/A' }}</td>
                    <td>{{ $p->jatahcuti }}</td>
                    <td>{{ $p->telahcuti }}</td>
                    <td>{{ $p->sisacuti }}</td>
                    <td>{{ $p->tgl_cutiterakhir }}</td>
                    <td class="d-flex align-items-center" style="gap: 5px;">
                        <button class="btn btn-warning btn-sm btn-edit"
                            data-id="{{ $p->id }}"
                            data-nama="{{ $p->worker->user->name ?? '-' }}"
                            data-jatah="{{ $p->jatahcuti }}"
                            data-sisa="{{ $p->sisacuti }}"
                            data-telah="{{ $p->telahcuti }}"
                            data-tglakhir="{{ $p->tgl_cutiterakhir }}"
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
                    <td colspan="8">No Data</td>
                </tr>
            @endforelse
            </tbody>
        </table>
    </div>
</div>

<!-- Modal Edit -->
{{-- Modal Edit --}}
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <form method="POST" action="{{ route('cutiTahunans.update') }}">
          @csrf
          @method('PUT')
          <input type="hidden" name="id" id="cuti_id">
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
                      <label>Jatah Cuti</label>
                      <input type="number" name="jatahcuti" id="jatahcuti" class="form-control" required>
                  </div>
                  <div class="form-group">
                      <label>Telah Diambil</label>
                      <input type="number" name="telahcuti" id="telahcuti" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <label>Sisa Cuti</label>
                    <input type="number" name="sisacuti" id="sisacuti" class="form-control" required>
                </div>
                  <div class="form-group">
                    <label>Cuti Terakhir</label>
                    <input type="date" name="tgl_cutiterakhir" id="tgl_cutiterakhir" class="form-control" required>
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
     // Isi form edit ketika tombol diklik
     $(document).on('click', '.btn-edit', function () {
        $('#cuti_id').val($(this).data('id'));
        $('#nama').val($(this).data('nama'));
        $('#jatahcuti').val($(this).data('jatah'));
        $('#sisacuti').val($(this).data('sisa'));
        $('#telahcuti').val($(this).data('telah'));
        $('#tgl_cutiterakhir').val($(this).data('tglakhir'));
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