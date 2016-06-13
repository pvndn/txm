<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterCarriagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('carriages', function (Blueprint $table) {
            
            $table->string('set_title', 60);
            $table->string('meta_desc', 160);
            $table->string('meta_key', 160);

            $table->enum('publish', [0, 1]);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('carriages', function (Blueprint $table) {
            $table->dropColumn('set_title');
            $table->dropColumn('meta_desc');
            $table->dropColumn('meta_key');

            $table->dropColumn('publish');
        });
    }
}
