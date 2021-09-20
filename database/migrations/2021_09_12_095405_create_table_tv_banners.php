<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvBanners extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_banners', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('alias');
            $table->text('brief')->nullable();
            $table->text('content')->nullable();
            $table->string('image')->nullable();
            $table->tinyInteger('status');
            $table->integer('ordering')->nullable();
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
        Schema::dropIfExists('tv_banners');
    }
}
