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
        Schema::create('web_info_types', function (Blueprint $table) {
            $table->id();
            $table->string('type_name');
            $table->string('title');
            $table->string('language');
            $table->boolean('defaults')->default(false);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });
        DB::statement('ALTER TABLE `web_info_types` DROP PRIMARY KEY, ADD PRIMARY KEY (`id`, `language`) USING BTREE');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('web_info_types');
    }
};
