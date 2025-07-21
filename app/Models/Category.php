<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = "categories";

    protected $primaryKey = "id";

    protected $guarded = [];

    public function childrenData()
    {
        return $this->hasMany(Category::class, 'cate_parent_id', 'id');
    }
}
