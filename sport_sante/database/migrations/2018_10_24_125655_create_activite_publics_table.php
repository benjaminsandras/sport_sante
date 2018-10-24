<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActivitePublicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ActivitePublics', function(Blueprint $table) {
            $table->increments('id');
            $table->integer('activite_id')->unsigned();
            $table->integer('publics_id')->unsigned();

            $table->foreign('activite_id')->references('id')->on('activite')
                        ->onDelete('restrict')
                        ->onUpdate('restrict');

            $table->foreign('publics_id')->references('id')->on('publics')
                        ->onDelete('restrict')
                        ->onUpdate('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ActivitePublics', function(Blueprint $table) {
            $table->dropForeign('post_activite_publics_id_foreign');
            $table->dropForeign('post_activite_publics_id_foreign');
        });

        Schema::dropIfExists('activite_publics');


    }
}
