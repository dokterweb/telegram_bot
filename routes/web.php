<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BpjController;
use App\Http\Controllers\GajiController;
use App\Http\Controllers\EtiketController;
use App\Http\Controllers\WorkerController;
use App\Http\Controllers\MintaFormController;
use App\Http\Controllers\SuratKerjaController;
use App\Http\Controllers\SuratTugasController;

Route::get('/', function () {
    return view('welcome');
});




Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware('auth')->group(function () {
    Route::resource('workers', WorkerController::class)->middleware('role:admin');
    Route::resource('gajis', GajiController::class)->middleware('role:admin');
    Route::get('/gaji/upload', [GajiController::class, 'showUploadForm'])->middleware('role:admin')->name('gaji.upload.form');
    Route::post('/gaji/upload', [GajiController::class, 'uploadSlipGaji'])->middleware('role:admin')->name('gaji.upload');
    Route::get('/gaji/process-slip', [GajiController::class, 'processSlipGaji'])->middleware('role:admin')->name('gaji.process');

    Route::resource('etikets', EtiketController::class)->middleware('role:admin');
    Route::resource('bpjs', BpjController::class)->middleware('role:admin');
    Route::resource('suratkerjas', SuratKerjaController::class)->middleware('role:admin');

    Route::resource('surattugases', SuratTugasController::class)
    ->middleware('role:admin')
    ->parameters(['surattugases' => 'suratTugas']);

    Route::resource('mintaforms', MintaFormController::class)->middleware('role:admin');

});