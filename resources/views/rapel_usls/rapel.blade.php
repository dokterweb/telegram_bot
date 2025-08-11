<!DOCTYPE html>
<html>
<head>
    <title>Rapel USL</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid transparent; /* Border transparan */
        }
        th, td {
            padding: 8px;
            text-align: center;
        }

        .info-table {
            width: 50%; /* Ukuran tabel 50% */
            margin-bottom: 20px;
        }

        div.a {
        text-align: center;
        }
    </style>
</head>
<body>

    <table class="info-table">
        <tr>
            <td><strong>Nama Karyawan</strong></td>
            <td>{{ $worker->user->name }}</td>
        </tr>
        <tr>
            <td><strong>NRP</strong></td>
            <td>{{ $worker->nrp }}</td>
        </tr>
        <tr>
            <td><strong>Jabatan</strong></td>
            <td>{{ $worker->jabatan }}</td>
        </tr>
    </table>

    <h3>Detail Kehadiran</h3>
    <table>
        <thead>
            <tr>
                <th>Tanggal</th>
                <th>Status</th>
                <th>In</th>
                <th>Out</th>
            </tr>
        </thead>
        <tbody>
            @foreach($usls as $usl)
                <tr>
                    <td>{{ \Carbon\Carbon::parse($usl->tanggal)->format('d-m-Y')  }}</td>
                    <td>{{ $usl->status }}</td>
                    <td>{{ $usl->in }}</td>
                    <td>{{ $usl->out }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <br>
    <table class="info-table">
        <tr>
            <td><strong>TOTAL</strong></td>
            <td align="center">Rp. {{ $rapel->totalhadir }} KEHADIRAN</td>
        </tr>
        <tr>
            <td><strong>Tarif</strong></td>
            <td align="right">Rp. {{ number_format($rapel->tarif, 0, ',', '.') }}</td>
        </tr>
        <tr>
            <td><strong>Rapelan</strong></td>
            <td align="right">Rp. {{ number_format($rapel->rapelan, 0, ',', '.') }}</td>
        </tr>
        <tr>
            <td><strong>Total</strong></td>
            <td align="right">Rp. {{ number_format($rapel->totalusl, 0, ',', '.') }}</td>
        </tr>
    </table>
    <br>
    <div class="a">
        <p>REVISI PALING LAMBAT TANGGAL 09 SETIAP BULANNYA</p>
        <p>DENGAN BUKTI KEHADIRAN</p>
        <p>(KEHADIRAN BERDASARKAN ABSEN MESIN)</p>
    </div>
</body>
</html>
