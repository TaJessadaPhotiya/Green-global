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
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string('cate_name')->nullable();
            $table->string('cate_title')->nullable();
            $table->string('cate_keyword')->nullable();
            $table->string('cate_description')->nullable();
            $table->string('cate_thumbnail')->nullable();
            $table->string('cate_thumbnail_title')->nullable();
            $table->string('cate_thumbnail_alt')->nullable();
            /* Web SEO */
            $table->string('cate_url')->nullable();
            $table->string('cate_h1')->nullable();
            $table->string('cate_h2')->nullable();
            $table->string('meta_title')->nullable();
            $table->string('meta_description')->nullable();
            $table->string('meta_keyword')->nullable();
            $table->string('cate_topic')->nullable();
            $table->string('cate_freetag')->nullable();
            $table->string('cate_attr')->nullable();
            /*End Web SEO */
            $table->string('cate_redirect')->nullable();
            $table->integer('cate_parent_id')->default(0);
            $table->integer('cate_root_id')->default(0);
            $table->integer('cate_level')->default(0);
            $table->boolean('cate_status_display')->default(true);
            $table->boolean('is_menu')->default(false);
            $table->boolean('is_topside')->default(false);
            $table->boolean('is_leftside')->default(false);
            $table->boolean('is_rightside')->default(false);
            $table->boolean('is_bottomside')->default(false);
            $table->integer('cate_priority')->default(1);
            $table->integer('cate_position')->default(1);
            $table->boolean('on_product')->default(false); //('ถ้าเป็น false จะใช้สำหรับ content category');
            $table->boolean('is_main_page')->default(true);
            $table->boolean('is_product_cate')->default(false);
            $table->dateTime('cate_date_display')->nullable();
            $table->dateTime('cate_date_hidden')->nullable();
            $table->string('language')->default('th');
            $table->boolean('defaults')->default(false);
            $table->timestamps();
            $table->unique(['language', 'cate_url']);
        });
        DB::statement('ALTER TABLE `categories` DROP PRIMARY KEY, ADD PRIMARY KEY (`id`, `language`) USING BTREE');

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('categories');
    }
};
