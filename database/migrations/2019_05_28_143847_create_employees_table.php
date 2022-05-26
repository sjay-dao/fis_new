<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('adoptor_id');
            $table->string('firstName');
            $table->string('middleName')->nullable();
            $table->string('lastName');
            $table->string('position');
            $table->string('age');
            $table->string('gender');
            $table->string('nationality');
            $table->string('contactNo');
            $table->string('email')->nullable();
            $table->string('picture');
            $table->string('status')->nullable();
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
        Schema::dropIfExists('employees');
    }
}
