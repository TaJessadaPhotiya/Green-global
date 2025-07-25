<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminAccount extends Model
{
    use HasFactory;

    protected $table = "admin_accounts";

    protected $primaryKey = "id";

    protected $guarded = [];
}
