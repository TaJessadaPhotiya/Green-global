<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $table = "posts";

    protected $primaryKey = "id";

    protected $guarded = [];

    protected $appends = ['date'];

    public function imagesOpsts()
    {
        return $this->hasMany(postImage::class, 'post_id', 'id');
    }

    public function getDateAttribute()
    {
        Carbon::setLocale('th');
        $date = Carbon::parse($this->created_at)->translatedFormat('j F Y');
        return $date;
    }
}
