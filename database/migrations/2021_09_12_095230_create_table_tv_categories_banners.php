<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvCategoriesBanners extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_categories_banners', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('alias');
            $table->tinyInteger('status')->nullable();
            $table->integer('ordering')->nullable();
            $table->string('image')->nullable();
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
        Schema::dropIfExists('tv_categories_banners');
    }
}
