<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvProductImageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_product_image', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image')->nullable();
            $table->string('type')->nullable();
            $table->string('size')->nullable();
            $table->integer('product_id')->nullable();
            $table->integer('product_option_id')->nullable();
            $table->tinyInteger('published')->nullable();
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
        Schema::dropIfExists('tv_product_image');
    }
}
