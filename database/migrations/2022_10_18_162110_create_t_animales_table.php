<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTAnimalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('t_animales', function (Blueprint $table) {
            $table->integer('id')->primary();
            $table->string('nombre_animal');
            $table->string('tipo_habitad');
            $table->string('localizacion');
            $table->string('extincion', 50);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('t_animales');
    }
}
