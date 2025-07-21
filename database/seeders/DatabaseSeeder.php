<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\WebInfo;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        #MOCKUP
        // userstable
        DB::table('users')->insert([
            ['id' => 1, 'username' => 'admin@example.com', 'password' => '$2y$10$s15yQn3lPYMKX03FjQor9.8Lah4FBHlJ6tSyQx9fZitwpaMaUtmm.', 'email' => "admin@example.com", 'account_role' => "backoffice"]
        ]);
        // admin_accountstable
        DB::table('admin_accounts')->insert([
            ['account_id' => 1, 'admin_level' => 1, 'admin_status' => 1, 'language' => "th,en", 'display_name' => "Tester", 'admin_note' => "Account devmode", 'admin_verify_at' => Carbon::now()]
        ]);
        // admin_roles table
        DB::table('admin_roles')->insert([
            ['id' => 1, 'role_name' => 'Superadmin'],
            ['id' => 2, 'role_name' => 'Admin'],
            ['id' => 3, 'role_name' => 'Officer'],
            ['id' => 4, 'role_name' => 'User'],
        ]);
        // language_availablestable
        DB::table('language_availables')->insert([
            ['id' => 1, 'abbv_name' => 'th', 'flag' => 'upload/2022/10/11/th-flag.png', 'name' => 'ไทย', "defaults" => 1, "display" => 1],
            ['id' => 2, 'abbv_name' => 'en', 'flag' => 'upload/2022/10/11/en-flag.png', 'name' => 'English', "defaults" => 0, "display" => 1],
        ]);
        // web_info_typestable
        DB::table('web_info_types')->insert([
            ['id' => 1, 'type_name' => 'detail', 'title' => 'ข้อมูลเว็บไซต์', 'language' => 'th', 'defaults' => true],
            ['id' => 5, 'type_name' => 'related websites', 'title' => 'เว็บไซต์ที่เกี่ยวข้อง', 'language' => 'th', 'defaults' => true],
            ['id' => 2, 'type_name' => 'contact', 'title' => 'ข้อมูลติดต่อ', 'language' => 'th', 'defaults' => true],
            ['id' => 3, 'type_name' => 'location', 'title' => 'ข้อมูลที่อยู่', 'language' => 'th', 'defaults' => true],
            ['id' => 4, 'type_name' => 'footer', 'title' => 'ข้อมูลส่วนท้าย', 'language' => 'th', 'defaults' => true],
        ]);
        // ad_slide_positions
        DB::table('ad_slide_positions')->insert([
            ['position' => 'banner', 'name' => 'banner', 'dimension' => '1600*500'],
            ['position' => 'slide', 'name' => 'slide', 'dimension' => '1600*500'],
            ['position' => 'intro', 'name' => 'intro', 'dimension' => '768*768'],
        ]);

        $this->call([
            CategorySeeder::class, //categoriestable
            WebInfoSeeder::class, //web_infostable
            PostsSeeder::class, //posts & post_images
        ]);
    }
}
