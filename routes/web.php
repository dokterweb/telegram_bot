<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BpjController;
use App\Http\Controllers\UslController;
use App\Http\Controllers\Bpj2Controller;
use App\Http\Controllers\GajiController;
use App\Http\Controllers\EtiketController;
use App\Http\Controllers\SurveyController;
use App\Http\Controllers\WorkerController;
use App\Http\Controllers\FormlainController;
use App\Http\Controllers\OvertimeController;
use App\Http\Controllers\RapelUslController;
use App\Http\Controllers\MintaFormController;
use App\Http\Controllers\SuratlainController;
use App\Http\Controllers\SuratAktifController;
use App\Http\Controllers\SuratKerjaController;
use App\Http\Controllers\SuratTugasController;
use App\Http\Controllers\CutiTahunanController;
use App\Http\Controllers\FormtemplateController;
use App\Http\Controllers\SuratTetapPromosiController;

Route::get('/', function () {
    return redirect('/login');
});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware('auth')->group(function () {
    Route::resource('workers', WorkerController::class)->middleware('role:admin');

    Route::get('/gaji/upload', [GajiController::class, 'showUploadForm'])->middleware('role:admin')->name('gaji.upload');
    Route::post('/gaji/upload', [GajiController::class, 'uploadSlipGaji'])->middleware('role:admin')->name('gaji.processUpload');
    Route::get('/gaji/process-slip', [GajiController::class, 'processSlipGaji'])->middleware('role:admin')->name('gaji.process');
    Route::resource('gajis', GajiController::class)->middleware('role:admin');

    Route::resource('etikets', EtiketController::class)->middleware('role:admin');
    Route::resource('suratkerjas', SuratKerjaController::class)->middleware('role:admin');
    Route::resource('surataktifs', SuratAktifController::class)->middleware('role:admin');
    Route::resource('surat_tetap_promosis', SuratTetapPromosiController::class)->middleware('role:admin');
    Route::resource('formtemplates', FormtemplateController::class)->middleware('role:admin');
    Route::resource('formlains', FormlainController::class)->middleware('role:admin');
    Route::resource('suratlains', SuratlainController::class)->middleware('role:admin');

    // Rute untuk menampilkan daftar BPJS (index)
    Route::get('bpjs2', [Bpj2Controller::class, 'index'])->middleware('role:admin')->name('bpjs2.index');
    Route::get('bpjs2/create', [Bpj2Controller::class, 'create'])->middleware('role:admin')->name('bpjs2.create');
    Route::post('bpjs2', [Bpj2Controller::class, 'store'])->middleware('role:admin')->name('bpjs2.store');
    Route::get('bpjs2/{id}/edit', [Bpj2Controller::class, 'edit'])->name('bpjs2.edit');
    Route::put('bpjs2/{id}', [Bpj2Controller::class, 'update'])->name('bpjs2.update');
    Route::delete('bpjs2/{id}', [Bpj2Controller::class, 'destroy'])->name('bpjs2.destroy');

    Route::resource('surattugases', SuratTugasController::class)
    ->middleware('role:admin')
    ->parameters(['surattugases' => 'suratTugas']);

    Route::resource('mintaforms', MintaFormController::class)->middleware('role:admin');
    
    Route::get('cutiTahunans', [CutiTahunanController::class, 'index'])->middleware('role:admin')->name('cutiTahunans.index');
    Route::post('cutiTahunans/import', [CutiTahunanController::class, 'import'])->middleware('role:admin')->name('cutiTahunans.import');
    Route::get('cutiTahunans/{cutiTahunan}/edit', [CutiTahunanController::class, 'edit'])->middleware('role:admin')->name('cutiTahunans.edit');
    Route::put('cutiTahunans/update', [CutiTahunanController::class, 'update'])->middleware('role:admin')->name('cutiTahunans.update');

    Route::get('/overtimes/upload', [OvertimeController::class, 'showUploadForm'])->name('overtimes.upload');
    Route::resource('overtimes', OvertimeController::class)->middleware('role:admin');
    Route::post('/overtimes/upload', [OvertimeController::class, 'uploadOvertimePdf'])->name('overtimes.upload');
        
    Route::resource('usls', UslController::class)->middleware('role:admin');
    Route::put('usls/{usl}', [UslController::class, 'updateModal'])->middleware('role:admin')->name('usls.updateModal');
    Route::post('usls/import', [UslController::class, 'import'])->middleware('role:admin')->name('usls.import');

    Route::get('RapelUsls', [RapelUslController::class, 'index'])->middleware('role:admin')->name('RapelUsls.index');
    // Route::get('RapelUsls/detail/{id}', [RapelUslController::class, 'detail'])->middleware('role:admin')->name('RapelUsls.detail');
    Route::get('rapel_usls/detail/{rapelusl}', [RapelUslController::class, 'detail'])->middleware('role:admin')->name('RapelUsls.detail');
    Route::put('rapel_usls/{rapelusl}', [RapelUslController::class, 'update'])->middleware('role:admin')->name('RapelUsls.update');
    
    // Rute untuk menampilkan daftar Survey (index)
    Route::get('surveys', [SurveyController::class, 'index'])->middleware('role:admin')->name('surveys.index');
});