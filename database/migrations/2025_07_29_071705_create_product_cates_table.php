<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('product_category', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('details')->nullable();
            $table->string('description')->nullable();
            $table->string('thumbnail_link')->nullable();
            $table->string('thumbnail_title')->nullable();
            $table->string('thumbnail_alt')->nullable();
            $table->text('details_content')->nullable();

            $table->integer('priority')->nullable();
            $table->boolean('pin')->default(false);
            $table->boolean('display')->default(true);
            $table->boolean('defaults')->default(false);
            $table->string('language')->default('th');
            $table->unique(['language', 'id']);
            $table->timestamps();
        });

        DB::statement('ALTER TABLE `product_category` DROP PRIMARY KEY, ADD PRIMARY KEY (`id`, `language`) USING BTREE');

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_category');
    }
};
