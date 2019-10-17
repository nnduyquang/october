<?php namespace Quang\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangMovies2 extends Migration
{
    public function up()
    {
        Schema::table('quang_movies_', function($table)
        {
            $table->string('slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_movies_', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
