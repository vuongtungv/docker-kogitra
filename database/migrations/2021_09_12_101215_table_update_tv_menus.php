<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableUpdateTvMenus extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tv_menus', function (Blueprint $table) {
            //
            $table->string('brief')->nullable()->change();
            $table->string('link')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tv_menus', function (Blueprint $table) {
            //
        });
    }
}
