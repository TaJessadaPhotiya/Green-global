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
        Schema::create('language_availables', function (Blueprint $table) {
            $table->id();
            $table->string('abbv_name');
            $table->string('name');
            $table->string('flag')->nullable();
            $table->boolean('defaults')->default(false);
            $table->boolean('display')->default(true);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('language_availables');
    }
};
