<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTvProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tv_product', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('alias')->nullable();
            $table->string('image')->nullable();
            $table->integer('category_id')->nullable();
            $table->string('category_name')->nullable();
            $table->tinyInteger('published')->nullable();
            $table->integer('ordering')->nullable();
            $table->string('price_range_1')->nullable();
            $table->string('price_range_2')->nullable();
            $table->string('discount_type')->nullable();
            $table->string('discount_value')->nullable();
            $table->text('brief')->nullable();
            $table->text('description')->nullable();
            $table->tinyInteger('show_home')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tv_product');
    }
}
