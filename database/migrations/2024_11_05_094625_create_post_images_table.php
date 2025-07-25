x<?php

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
        Schema::create('post_images', function (Blueprint $table) {
            $table->id();
            $table->integer('post_id')->nullable();
            $table->string('image_link');
            $table->string('alt')->nullable();
            $table->string('title')->nullable();
            $table->string('description')->nullable();
            $table->integer('position')->default(1);
            $table->string('language')->nullable();
            $table->string('defaults')->default(0);
            $table->integer('update_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('post_images');
    }
};
