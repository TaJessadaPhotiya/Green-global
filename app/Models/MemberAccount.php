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

    public function memberUser()
    {
        // MemberAccount มี User เพียงหนึ่งเดียว โดยใช้ 'users_id' ใน MemberAccount และ 'id' ใน User
        return $this->belongsTo(User::class, 'users_id', 'id');
    }
    public function memberProfiles()
    {
        // MemberAccount มี MemberProfiles เพียงหนึ่งเดียว โดยใช้ 'id' ของ MemberProfiles และ 'profiles_id' ใน MemberAccount
        // *จุดนี้มีความสับสน* โดยทั่วไปแล้ว foreign key ควรอยู่ในตารางที่อยู่ 'many-to' ดังนั้น MemberProfiles ควรมีคอลัมน์ 'member_account_id'
        // หากโครงสร้างของคุณเป็นแบบนี้ ให้ปรับแก้ตามโค้ดด้านล่าง
        return $this->hasOne(MemberProfiles::class, 'id', 'profiles_id');
    }
}

