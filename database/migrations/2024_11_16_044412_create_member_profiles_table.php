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
        Schema::create('member_profiles', function (Blueprint $table) {
            $table->id();
            $table->string('profiles_image')->nullable();
            $table->string('display_name')->nullable();
            $table->string("first_name")->nullable();
            $table->string("last_name")->nullable();
            $table->string("phone_number")->nullable();
            $table->string("address")->nullable();
            $table->string("district")->nullable();
            $table->string("subdistrict")->nullable();
            $table->string("province")->nullable();
            $table->string("zipcode")->nullable();
            $table->integer("coin")->default(0);
            $table->string("note")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('member_profiles');
    }
};
