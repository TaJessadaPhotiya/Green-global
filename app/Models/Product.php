<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Product extends Model
{
    use HasFactory;

    protected $table = "products";
    protected $primaryKey = "id";
    protected $guarded = [];
    protected $appends = ['percent','category_product'];

    public function imagesOther()
    {
        return $this->hasMany(ProductsImages::class, 'product_id', 'id');
    }

    public function productsBrand(): HasOne
    {
        return $this->hasOne(Brand::class,'id','brand');
    }

    // คำนวณเปอร์เซ็น Accessor
    public function getPercentAttribute()
    {
        if (intval($this->discounted) != 0 && intval($this->discounted) != null) {
            $percent = ((intval($this->price) - intval($this->discounted)) / intval($this->price)) * 100;
            return floor($percent);
        }
        return null;
    }

    // แยก cate_id Accessor
    public function getCategoryProductAttribute()
    {
        // ดึงค่า cate_id จากฐานข้อมูล
        $category_product = explode(',', $this->cate_id);

        // ลบค่าว่าง
        $category_product = array_filter($category_product, function($value) {
            return $value !== '';
        });

        // รีอินเด็กซ์อาเรย์ใหม่
        return array_values($category_product);
    }
}
