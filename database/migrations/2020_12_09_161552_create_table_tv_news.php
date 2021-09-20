<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvNews extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('alias');
            $table->text('brief')->nullable();
            $table->text('content')->nullable();
            $table->integer('category_id')->unsigned();;
            $table->string('category_name');
            $table->string('image')->nullable();
            $table->tinyInteger('status');
            $table->tinyInteger('show_home');
            $table->integer('count_read')->nullable();
            $table->integer('ordering')->nullable();
            $table->foreign('category_id')->references('id')->on('tv_categories_news');
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
        Schema::dropIfExists('tv_news');
    }
}
