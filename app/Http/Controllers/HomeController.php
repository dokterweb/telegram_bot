<?php

namespace App\Http\Controllers;

use App\Models\Bpj2;
use App\Models\Gaji;
use App\Models\Etiket;
use App\Models\Worker;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // Mengambil jumlah Total Karyawan
        $totalKaryawan = Worker::count();

        // Mengambil jumlah BPJS yang ada
        $totalBpjs = Bpj2::count();

        // Mengambil jumlah Etiket yang ada
        $totalEtiket = Etiket::count();

        // Mengambil jumlah Gaji yang ada
        $totalGaji = Gaji::count();

        // Mengirim data ke view 'home'
        return view('home', compact('totalKaryawan', 'totalBpjs', 'totalEtiket', 'totalGaji'));
    }
}
