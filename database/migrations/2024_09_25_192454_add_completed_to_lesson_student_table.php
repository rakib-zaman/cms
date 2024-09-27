<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCompletedToLessonStudentTable extends Migration
{
    public function up()
    {
        Schema::table('lesson_student', function (Blueprint $table) {
            $table->boolean('completed')->default(false); // Add this line
        });
    }

    public function down()
    {
        Schema::table('lesson_student', function (Blueprint $table) {
            $table->dropColumn('completed'); // Add this line
        });
    }
}
