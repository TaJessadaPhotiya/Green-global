<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class postImage extends Model
{
    use HasFactory;

    protected $table = "post_images";

    protected $primaryKey = "id";

    protected $guarded = [];
}
