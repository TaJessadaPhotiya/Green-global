<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('member_accounts', function (Blueprint $table) {
            $table->id();
            $table->integer('users_id');
            $table->integer('profiles_id')->nullable();
            $table->string('facebook_id')->nullable();
            $table->string('google_id')->nullable();
            $table->string('line_id')->nullable();
            $table->string('apple_id')->nullable();
            $table->boolean('member_status')->default(true);
            $table->string('member_note')->nullable();
            $table->dateTime('member_verify_at')->nullable();
            $table->dateTime('member_expire_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('member_accounts');
    }
};
