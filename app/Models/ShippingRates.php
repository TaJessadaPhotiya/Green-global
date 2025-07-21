<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShippingRates extends Model
{
    use HasFactory;

    protected $table = "shipping_rates";

    protected $primaryKey = "id";

    protected $guarded = [];
}
