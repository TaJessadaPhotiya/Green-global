<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;

    protected $table = "orders";

    protected $primaryKey = "id";

    protected $guarded = [];

    public function orderItems()
    {
        return $this->hasMany(OrderItems::class, 'order_id');
    }
}
