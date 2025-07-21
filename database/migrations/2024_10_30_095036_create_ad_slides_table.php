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
        Schema::create('ad_slides', function (Blueprint $table) {
            $table->id();
            $table->integer('page_id')->default(0);
            $table->string('ad_image');
            $table->string('ad_image_alt')->nullable();
            $table->string('ad_image_title')->nullable();
            $table->string('ad_title')->nullable();
            $table->string('ad_description')->nullable();
            $table->integer('ad_type')->default(1)->comment('1: ภาพหน้าหลัก, 2: ภาพโฆษณา');
            $table->integer('ad_position_id')->default(1);
            $table->integer('ad_priority')->default(1);
            $table->string('ad_link')->nullable();
            $table->string('ad_redirect')->nullable();
            $table->string('ad_h1')->nullable();
            $table->string('ad_h2')->nullable();
            $table->boolean('ad_status_display')->default(true);
            $table->dateTime('ad_date_display')->nullable();
            $table->dateTime('ad_date_hidden')->nullable();
            $table->string('language')->default('th');
            $table->string('defaults')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ad_slides');
    }
};
