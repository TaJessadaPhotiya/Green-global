<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberAccount extends Model
{
    use HasFactory;

    protected $table = "member_accounts";

    protected $primaryKey = "id";

    protected $guarded = [];

    public function accountMember()
    {
        return $this->hasMany(User::class, 'id', 'users_id');
    }

    public function detailMember()
    {
        return $this->hasMany(MemberProfiles::class, 'id', 'profiles_id');
    }
}

