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
        Schema::create('web_infos', function (Blueprint $table) {
            $table->id('info_id');
            $table->string('info_type')->nullable();
            $table->string('info_param');
            $table->string('info_title')->nullable();
            $table->text('info_value')->nullable();
            $table->text('info_link')->nullable();
            $table->text('info_iframe')->nullable();
            $table->string('info_attribute')->nullable();
            $table->integer('info_priority')->default(1);
            $table->boolean('info_display')->default(true);
            $table->boolean('admin_level')->comment('สิทธิ์เข้าถึงข้อมูล');
            $table->string('language');
            $table->boolean('defaults')->default(false);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
            $table->unique(['language', 'info_param']);
        });

        DB::statement('ALTER TABLE `web_infos` DROP PRIMARY KEY, ADD PRIMARY KEY (`info_id`, `language`) USING BTREE');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('web_infos');
    }
};
