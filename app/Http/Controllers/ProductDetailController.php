<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductDetailController extends Controller
{
    public function index($language, $id)
    {

        // ดึงเฉพาะสินค้าตาม id
        $product = Product::join('product_category', 'products.category', '=', 'product_category.id')
            ->select('products.*', 'product_category.title as category_name')
            ->where('products.id', (int) $id)
            ->where('products.language', $language)
            ->first();

        // ถ้าไม่พบสินค้า
        if (!$product) {
            // abort(404, 'Product not found');
             $product = Product::join('product_category', 'products.category', '=', 'product_category.id')
            ->select('products.*', 'product_category.title as category_name')
            ->where('products.id', (int) $id)
            ->where('products.defaults', 1)
            ->first();
        }

        return view('pages.product-detail.product-detail', compact('product'));
    }
}
