@extends('adminlte::page')

@section('title', 'Detil')

@section('content_header')
    <h1>Detil</h1>
@stop

@section('content')
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">{{$gaji->worker->user->name}}</h3>
            <div class="card-tools">
            <a href="{{route('gajis.index')}}" class="btn btn-info"><i class="fas fa-plus-circle"></i> Data Gaji</a>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <h3>Penerimaan</h3>
                    <hr style="border: 1px solid red; margin-top: 20px; margin-bottom: 20px;">
                    <table class="table table-bordered table-striped">
                        <tbody>
                            <tr>
                                <td>Gaji Pokok</td>
                                <td>{{$gaji->gajipokok}}</td>
                            </tr>
                            <tr>
                                <td>Tunjangan PPh</td>
                                <td>{{$gaji->tunjangan_pph}}</td>
                            </tr>
                            <tr>
                                <td>Lembur</td>
                                <td>{{$gaji->lembur}}</td>
                            </tr>
                            <tr>
                                <td>Insentif Produksi Operator</td>
                                <td>{{$gaji->insentif_produksi_operator}}</td>
                            </tr>
                            <tr>
                                <td>Iuran Jamsostek 5.74%</td>
                                <td>{{$gaji->iuran_jamsostek}}</td>
                            </tr>
                            <tr>
                                <td>Iuran BPJS Kes 4%</td>
                                <td>{{$gaji->iuran_bpjs}}</td>
                            </tr>
                            <tr>
                                <td>Iuran JP</td>
                                <td>{{$gaji->iuran_jp}}</td>
                            </tr>
                            <tr>
                                <td>Total Overtime</td>
                                <td>{{$gaji->total_overtime}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-6">
                    <h3>Potongan</h3>
                    <hr style="border: 1px solid red; margin-top: 20px; margin-bottom: 20px;">
                    <table class="table table-bordered table-striped">
                        <tbody>
                            <tr>
                                <td>Pajak PPh21</td>
                                <td>{{$gaji->pajak_pph21}}</td>
                            </tr>
                            <tr>
                                <td>Pot Iuran Jamsostek 5.74%</td>
                                <td>{{$gaji->pot_iuran_jamsostek}}</td>
                            </tr>
                            <tr>
                                <td>Pot JHT 2%</td>
                                <td>{{$gaji->pot_jht}}</td>
                            </tr>
                            <tr>
                                <td>Pot BPJS Kes 4%</td>
                                <td>{{$gaji->pot_bpjs_kes4}}</td>
                            </tr>
                            <tr>
                                <td>Pot JP 2%</td>
                                <td>{{$gaji->pot_jp2}}</td>
                            </tr>
                            <tr>
                                <td>Pot BPJS Kes 1%</td>
                                <td>{{$gaji->pot_bpjs_kes1}}</td>
                            </tr>
                            <tr>
                                <td>Pot JP 1%</td>
                                <td>{{$gaji->pot_jp1}}</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
            
        </div>
    </div>
@stop

@section('css')
    
@stop

@section('js')
    <script> console.log("Hi, I'm using the Laravel-AdminLTE package!"); </script>
@stop