<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('slug');
            $table->string('title')->nullable();
            $table->string('keyword')->nullable();
            $table->string('description')->nullable();
            $table->text('freetag')->nullable();
            $table->string('h1')->nullable();
            $table->string('h2')->nullable();
            $table->string('short_url')->nullable();
            $table->string('thumbnail_title')->nullable();
            $table->string('thumbnail_link')->nullable();
            $table->string('thumbnail_size')->nullable();
            $table->string('thumbnail_alt')->nullable();
            $table->string('thumbnail_second_title')->nullable();
            $table->string('thumbnail_second_link')->nullable();
            $table->string('thumbnail_second_size')->nullable();
            $table->string('thumbnail_second_alt')->nullable();
            $table->string('seement')->default('0');
            $table->string('plant_1');
            $table->string('plant_2');
            $table->string('plant_3');
            $table->string('fruit_1');
            $table->string('fruit_2');
            $table->string('fruit_3');
            $table->string('taste_1');
            $table->string('taste_2');
            $table->string('disease_1');
            $table->string('disease_2');
            $table->string('category')->nullable();
            $table->text('tags')->nullable();
            $table->text('redirect')->nullable();
            $table->text('link_facebook')->nullable();
            $table->text('link_twitter')->nullable();
            $table->text('link_instagram')->nullable();
            $table->text('link_youtube')->nullable();
            $table->text('link_line')->nullable();
            $table->text('doc_link')->nullable();
            $table->boolean('display')->nullable();
            $table->boolean('pin')->default(false);
            $table->integer('post_view')->default(0);
            $table->string('priority')->default(1);
            $table->string('meta_tag')->nullable();
            $table->string('meta_title')->nullable();
            $table->string('meta_description')->nullable();
            $table->integer('last_update_by')->nullable();
            $table->string('language');
            $table->boolean('defaults')->default(false);
            $table->timestamps();
            // $table->unique(['language', 'slug']);
        });
        DB::statement('ALTER TABLE `products` DROP PRIMARY KEY, ADD PRIMARY KEY (`id`, `language`) USING BTREE');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
