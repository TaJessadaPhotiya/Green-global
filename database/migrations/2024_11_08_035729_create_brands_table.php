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
        Schema::create('brands', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('thumbnail_link')->nullable();
            $table->string('thumbnail_title')->nullable();
            $table->string('thumbnail_alt')->nullable();
            $table->integer('priority')->nullable();
            $table->boolean('is_brand')->default(true);
            $table->boolean('display')->default(true);
            $table->boolean('defaults')->default(true);
            $table->string('language')->default('th');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('brands');
    }
};
