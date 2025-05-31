<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('rapel_usls', function (Blueprint $table) {
            $table->unsignedBigInteger('worker_id')->after('id')->nullable()->index();
    
            // Jika mau, tambahkan foreign key constraint
            $table->foreign('worker_id')->references('id')->on('workers')->onDelete('cascade');
        });
    }
    
    public function down()
    {
        Schema::table('rapel_usls', function (Blueprint $table) {
            $table->dropForeign(['worker_id']);
            $table->dropColumn('worker_id');
        });
    }
};
