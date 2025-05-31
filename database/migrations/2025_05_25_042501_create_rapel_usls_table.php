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
        Schema::create('rapel_usls', function (Blueprint $table) {
            $table->id();
            $table->mediumInteger('totalhadir');
            $table->Integer('tarif');
            $table->Integer('rapelan');
            $table->Integer('totalusl');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rapel_usls');
    }
};
