<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateColumnsTvBanners extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tv_banners', function (Blueprint $table) {
            //
            $table->string('link')->nullable();
            $table->string('category_id')->nullable();
            $table->string('category_name')->nullable();
            $table->string('target')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tv_banners', function (Blueprint $table) {
            //
        });
    }
}
