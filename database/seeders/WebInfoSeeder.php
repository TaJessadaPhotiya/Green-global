<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WebInfoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('web_infos')->insert([
            [
                'info_id' => 1,
                'info_type' => 1,
                'info_param' => "webname",
                'info_title' => "ชื่อเว็บไซต์ #1",
                'info_priority' => 1,
                'admin_level' => 3,
                'language' => "th",
                'defaults' => 1,
                'info_value' => '',
                'info_link' => '',
                'info_iframe' => '',
                'info_attribute' => ''
            ],
            // [
            //     'info_id' => 2,
            //     'info_type' => 1,
            //     'info_param' => "extraname",
            //     'info_title' => "ชื่อเว็บไซต์ #2",
            //     'info_priority' => 3,
            //     'admin_level' => 3,
            //     'language' => "th",
            //     'defaults' => 1,
            //     'info_value' => '',
            //     'info_link' => '',
            //     'info_iframe' => '',
            //     'info_attribute' => ''
            // ],
            [
                'info_id' => 3,
                'info_type' => 1,
                'info_param' => "companyname",
                'info_title' => "ชื่อบริษัท / ชื่อร้านค้า",
                'info_priority' => 3,
                'admin_level' => 3,
                'language' => "th",
                'defaults' => 1,
                'info_value' => '',
                'info_link' => '',
                'info_iframe' => '',
                'info_attribute' => ''
            ],
            [
                'info_id' => 8,
                'info_type' => 1,
                'info_param' => "favicon",
                'info_title' => "Image favicon (Primary)",
                'info_priority' => 6,
                'admin_level' => 3,
                'language' => "th",
                'defaults' => 1,
                'info_value' => '',
                'info_link' => '',
                'info_iframe' => '',
                'info_attribute' => ''
            ],
            [
                'info_id' => 4,
                'info_type' => 1,
                'info_param' => "image_1",
                'info_title' => "Image #1 (Primary)",
                'info_priority' => 3,
                'admin_level' => 3,
                'language' => "th",
                'defaults' => 1,
                'info_value' => '',
                'info_link' => '',
                'info_iframe' => '',
                'info_attribute' => ''
            ],
            [
                'info_id' => 22,
                'info_type' => 4,
                'info_param' => "copy_right",
                'info_title' => "copy right",
                'info_priority' => 1,
                'admin_level' => 3,
                'language' => "th",
                'defaults' => 1,
                'info_value' => '© 2023 by Tamarind Thai Restaurant.com',
                'info_link' => '',
                'info_iframe' => '',
                'info_attribute' => ''
            ],
        ]);
    }
}
