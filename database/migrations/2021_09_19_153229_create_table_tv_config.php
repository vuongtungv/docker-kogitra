<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvConfig extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_config', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('title')->nullable();
            $table->text('value')->nullable();
            $table->text('data_type')->nullable();
            $table->integer('ordering')->nullable();
            $table->tinyInteger('status')->nullable();
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
        Schema::dropIfExists('tv_config');
    }
}
