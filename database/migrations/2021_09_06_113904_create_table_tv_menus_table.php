<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_menus', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('alias');
            $table->string('link');
            $table->string('brief');
            $table->tinyInteger('published')->nullable();
            $table->string('parent_id')->nullable();
            $table->string('list_parent')->nullable();
            $table->integer('level')->nullable();
            $table->integer('ordering')->nullable();
            $table->string('image')->nullable();
            $table->string('icon')->nullable();
            $table->string('target')->nullable();
            $table->integer('group_id')->nullable();
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
        Schema::dropIfExists('tv_menus');
    }
}
