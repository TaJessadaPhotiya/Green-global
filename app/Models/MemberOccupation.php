<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberOccupation extends Model
{
    use HasFactory;

    protected $table = "member_occupations";

    protected $primaryKey = "id";

    protected $guarded = [];
}
