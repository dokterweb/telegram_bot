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
        <div class="col-md-6">
            <form method="POST" action="{{ route('RapelUsls.update', $rapelusl->id) }}">
                @csrf
                @method('PUT')
                <table class="table table-bordered">
                    <tr>
                        <td>Nama Karyawan</td>
                        <td>:</td>
                        <td>{{ $rapelusl->worker->user->name ?? '-' }}</td>
                    </tr>
                    <tr>
                        <td>Total Hadir</td>
                        <td>:</td>
                        <td>{{ $rapelusl->totalhadir }}</td>
                    </tr>
                    <tr>
                        <td>Tarif</td>
                        <td>:</td>
                        <td><input type="number" name="tarif" class="form-control" value="{{ old('tarif', $rapelusl->tarif) }}" min="0"></td>
                    </tr>
                    <tr>
                        <td>Rapelan</td>
                        <td>:</td>
                        <td><input type="number" name="rapelan" class="form-control" value="{{ old('rapelan', $rapelusl->rapelan) }}" min="0"></td>
                    </tr>
                    <tr>
                        <td>Total USL</td>
                        <td>:</td>
                        <td>Rp. {{ number_format($rapelusl->totalusl) }}</td>
                    </tr>
                </table>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </form>
       </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <div class="card-title">
            Data USL
        </div>
    </div>
    <div class="card-body">
        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>NRP</th>
                    <th>Tanggal</th>
                    <th>IN</th>
                    <th>OUT</th>
                    <th>Status</th>
                    <th>Act</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($usls as $usl)
                    <tr>
                        <td>{{ $usl->worker->user->name ?? '-' }}</td>
                        <td>{{ $usl->worker->nrp ?? '-' }}</td>
                        <td>{{ $usl->tanggal }}</td>
                        <td>{{ $usl->in }}</td>
                        <td>{{ $usl->out }}</td>
                        <td>{{ $usl->status }}</td>
                        <td>
                            <!-- Tombol Edit untuk membuka modal -->
                            <button class="btn btn-sm btn-warning btn-edit" 
                                    data-id="{{ $usl->id }}"
                                    data-nama="{{ $usl->worker->user->name ?? '-' }}"
                                    data-tanggal="{{ $usl->tanggal }}"
                                    data-in="{{ $usl->in }}"
                                    data-out="{{ $usl->out }}"
                                    data-status="{{ $usl->status }}"
                                    data-toggle="modal" 
                                    data-target="#editModal">
                                Edit
                            </button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

<!-- Modal Edit -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form method="POST" action="{{ route('usls.updateModal', '') }}" id="editForm">
            @csrf
            @method('PUT')
            <input type="hidden" name="id" id="usl_id">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Data USL</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nama Karyawan</label>
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
                    <button type="submit" class="btn btn-primary">Update</button>
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

    $(document).on('click', '.btn-edit', function () {
        var id = $(this).data('id');
        $('#usl_id').val(id);
        $('#nama').val($(this).data('nama'));
        $('#tanggal').val($(this).data('tanggal'));
        
        // Menambahkan detik ":00" jika hanya HH:MM
        var inTime = $(this).data('in');
        if (inTime.length === 5) {
            inTime += ':00';
        }
        $('#in').val(inTime);

        var outTime = $(this).data('out');
        if (outTime.length === 5) {
            outTime += ':00';
        }
        $('#out').val(outTime);

        $('#status').val($(this).data('status'));
        
        // Set action form untuk update berdasarkan id
        $('#editForm').attr('action', '/usls/' + id);
    });



</script>
@stop