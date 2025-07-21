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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('cate_id');
            $table->string('thumbnail')->nullable();
            $table->string('thumbnail_title')->nullable();
            $table->string('thumbnail_alt')->nullable();
            $table->string('slides_thumbnail')->nullable();
            $table->string('slides_thumbnail_title')->nullable();
            $table->string('slides_thumbnail_alt')->nullable();
            $table->string('title')->nullable();
            $table->string('keyword')->nullable();
            $table->text('description')->nullable();
            $table->text('freetag')->nullable();
            $table->text('content')->nullable();
            $table->integer('brand')->nullable();
            $table->string('code')->nullable();
            $table->string('price')->nullable();
            $table->string('discounted')->nullable();
            $table->string('coin')->nullable();
            $table->integer('priority')->default(1);
            $table->boolean('is_credit_card')->nullable();
            $table->boolean('is_cash_onDelivery')->nullable();
            $table->boolean('is_banking')->nullable();
            $table->boolean('is_new')->nullable();
            $table->boolean('is_best_seller')->nullable();
            $table->boolean('display')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
