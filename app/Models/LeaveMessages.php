<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeaveMessages extends Model
{
    use HasFactory;

    protected $table = "leave_messages";

    protected $primaryKey = "id";

    protected $guarded = [];
}
