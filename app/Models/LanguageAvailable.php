<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LanguageAvailable extends Model
{
    use HasFactory;

    protected $table = "language_availables";

    protected $primaryKey = "id";

    protected $guarded = [];
}
