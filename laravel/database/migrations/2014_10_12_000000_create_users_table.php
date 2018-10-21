<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {

		// standard across sites:
		$table->increments('id');
		$table->string('name')->unique();
		$table->string('email')->unique();
		$table->string('password');
		$table->string('arrows')->default('0')->nullable();
		$table->string('karma')->default('0')->nullable();
		$table->string('communityPoints')->default('0')->nullable();
		$table->string('last_dub_time')->default('0')->nullable();
		$table->string('avatar')->nullable();
		$table->rememberToken();
		$table->timestamps();

		// distribution only:
		$table->string('type')->nullable();
		$table->string('point')->default('0')->nullable();
		$table->integer('form_level')->default(0)->nullable();
		$table->string('ip')->nullable();

		// music only: 
		$table->boolean('is_admin')->default(false);

		// poster site / laravel-irt /lolhow only: 
		$table->string('api_token', 60)->unique();
		$table->integer('thread_karma')->default(0);
		$table->integer('post_karma')->default(0);
          
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
