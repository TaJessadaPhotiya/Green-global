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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('member_id');
            $table->string('order_number');
            $table->string('firstname')->nullable();
            $table->string('lastname')->nullable();
            $table->string('phone_number')->nullable();
            $table->string('email')->nullable();
            $table->string('district')->nullable();
            $table->string('subdistrict')->nullable();
            $table->string('province')->nullable();
            $table->string('zip_code')->nullable();
            $table->string('address')->nullable();
            $table->string('moredetails')->nullable();
            $table->string('order_status');

            $table->string('images_card')->nullable();
            $table->string('images_card_people')->nullable();
            $table->string('images_slip')->nullable();
            $table->integer('payment_method')->comment("'1' ปลายทาง , '2' โอนชำระ	");

            $table->dateTime('order_date')->nullable()->comment('วันที่สั่งซื้อ');
            $table->dateTime('shipping_date')->nullable()->comment('วันที่จัดส่ง');
            $table->string('order_carrier')->nullable()->default(null)->comment('ประเภทขนส่ง');
            $table->string('tracking_number')->nullable()->comment('เลขติดตามพัสดุ');
            $table->float('total_price')->comment('ราคารวม');
            $table->float('total_coin')->comment('coinรวม');
            $table->float('last_coin')->comment('coin ล่าสุด');
            $table->float('shipping_cost')->nullable('ค่าจัดส่ง');
            $table->integer('coin_use')->default(0);
            $table->float('discount')->nullable()->comment('ส่วนลด');
            $table->integer('info_bank_id');
            $table->integer('update_by')->nullable()->comment('เก็บไอดีบัญชีที่ update');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
