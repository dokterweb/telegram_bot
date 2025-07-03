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

        <table id="paketTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama Karyawan</th>
                    <th>NRP</th>
                    <th>Total Hadir</th>
                    <th>Bulan Tahun</th>
                    <th>File</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($rapelData as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{ $item['nama'] }}</td>
                        <td>{{ $item['nrp'] }}</td>
                        <td>{{ $item['totalhadir'] }}</td>
                        <td>{{ $item['bulan_tahun'] }}</td>
                        @if ($item['rapel_file'])
                            <td><a href="{{ asset($item['rapel_file']) }}" target="_blank" class="btn btn-danger">Download</a></td>
                        @else
                            <td>No Data</td>
                        @endif
                        <td><a href="{{route('RapelUsls.detail',$item['id'])}}" class="btn btn-sm btn-info"><i class="far fa-edit"></i></a></td>
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
    
<!-- resources/views/layouts/app.blade.php atau layout utama -->

<script>
    $(document).ready(function () {
        $('#paketTable').DataTable();
    });

</script>
@stop