<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberProfiles extends Model
{
    use HasFactory;

    protected $table = "member_profiles";

    protected $primaryKey = "id";

    protected $guarded = [];
}
