<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductCate extends Model
{
    use HasFactory;

    protected $table = "product_category";

    protected $primaryKey = "id";

    protected $guarded = [];

    public function product(){
        return $this->hasMany(Product::class,'category','id')
        ->groupBy('id');
    }

    public function segmentsChild(){
        return $this->hasMany(Segment::class,'id','segment_id')
        ->groupBy('id');
    }
}
