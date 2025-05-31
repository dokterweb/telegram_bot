<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BpjController;
use App\Http\Controllers\UslController;
use App\Http\Controllers\GajiController;
use App\Http\Controllers\EtiketController;
use App\Http\Controllers\WorkerController;
use App\Http\Controllers\OvertimeController;
use App\Http\Controllers\RapelUslController;
use App\Http\Controllers\MintaFormController;
use App\Http\Controllers\SuratKerjaController;
use App\Http\Controllers\SuratTugasController;
use App\Http\Controllers\CutiTahunanController;

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
    Route::resource('bpjs', BpjController::class)->middleware('role:admin');
    Route::resource('suratkerjas', SuratKerjaController::class)->middleware('role:admin');

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
    

});