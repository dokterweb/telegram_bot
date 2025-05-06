<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('workers', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('nrp');
            $table->string('jabatan');
            $table->string('departemen');
            $table->enum('staff', ['0', '1'])->default('1');
            $table->string('tempat_lahir');
            $table->date('tanggal_lahir');
            $table->date('tgl_masuk_kerja');
            $table->string('no_hp');
            $table->enum('is_active', ['0', '1'])->default('1');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('workers');
    }
};
