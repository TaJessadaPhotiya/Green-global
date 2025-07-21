<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('posts')->insert([
            [
                'slug' => 'picture-home',
                'title' => 'THE ONE BB GUN',
                'keyword' => 'picture home',
                'description' => 'About, The one BBGUN Khonkean',
                'freetag' => NULL,
                'h1' => NULL,
                'h2' => NULL,
                'short_url' => NULL,
                'thumbnail_title' => NULL,
                'thumbnail_link' => NULL,
                'thumbnail_size' => NULL,
                'thumbnail_alt' => NULL,
                'topic' => NULL,
                'content' => '<p>ร้านเดอะวันบีบีกัน THE OnE BB GUN จำหน่าย ปืนบีบีกัน BBGun และอุปกรณ์เกี่ยวกับบีบีกัน ครบวงจร พร้อมมีบริการแต่งปืน ซ่อมปืน วิเคราะห์ปัญหาปืนบีบีกัน โดยช่างผู้ชำนาญการ และยังมีสนามบีบีที่มี มาตรฐานพร้อมให้บริการ</p>',
                'iframe' => NULL,
                'category' => 1,
                3,
                'is_lucky_benefit' => 0,
                'lucky_benefit_id' => NULL,
                'tags' => NULL,
                'redirect' => NULL,
                'link_facebook' => NULL,
                'link_twitter' => NULL,
                'link_instagram' => NULL,
                'link_youtube' => NULL,
                'link_line' => NULL,
                'status_display' => 1,
                'pin' => 1,
                'defaults' => 1,
                'post_view' => 0,
                'priority' => 1,
                'meta_tag' => NULL,
                'meta_title' => NULL,
                'meta_description' => NULL,
                'allow_delete' => 0,
                'is_maincontent' => 1,
                'language' => 'th',
                'date_begin_display' => NULL,
                'date_end_display' => NULL,
                'created_at' => '2024-11-06 01:32:37',
                'updated_at' => '2024-11-20 02:16:51',
            ],

        ]);

        DB::table('post_images')->insert([
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/06/pic-home-1.jpg',
                'alt' => '',
                'title' => '',
                'description' => NULL,
                'position' => 1,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/20/pic-home-2(1).jpg',
                'alt' => '',
                'title' => '',
                'description' => NULL,
                'position' => 1,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/20/pic-home-3(2).jpg',
                'alt' => '',
                'title' => '',
                'description' => NULL,
                'position' => 2,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/20/flowbite_shopping-bag-solid.png',
                'alt' => 'จำหน่ายปืนบีบีกันและอุปกรณ์เสริม ครบวงจร',
                'title' => 'บีบีกันและอุปกรณ์เสริม',
                'description' => NULL,
                'position' => 3,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/20/Group 493.png',
                'alt' => 'มีสนามบีบีกันที่ได้มาตรฐาน พร้อมให้บริการ',
                'สนามบีบีกัน',
                'title' => 'สนามบีบีกัน',
                'description' => NULL,
                'position' => 4,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/20/Group 494.png',
                'alt' => 'บริการปรับแต่งปืนด้วยประสบการณ์กว่า 7 ปี',
                'บริการแต่งปืน',
                'title' => 'บริการแต่งปืน',
                'description' => NULL,
                'position' => 5,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
            [
                'post_id' => 1,
                'image_link' => 'upload/2024/11/20/Group 495.png',
                'alt' => 'บริการซ่อมปืน วิเคราะห์ปัญหาโดยช่างผู้ชำนาญการ',
                'title' => 'บริการซ่อมปืน',
                'description' => NULL,
                'position' => 6,
                'language' => 'th',
                'defaults' => 1,
                'update_by' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ],
        ]);
    }
}
