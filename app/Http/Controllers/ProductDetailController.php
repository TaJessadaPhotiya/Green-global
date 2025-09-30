<?php

namespace App\Http\Controllers;

use App\Models\LanguageConfig;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductDetailController extends Controller
{
    public function index($language, $id)
    {

        // ดึงเฉพาะสินค้าตาม id
        $product = Product::join('product_category', function ($join) use ($language) {
            $join->on('products.category', '=', 'product_category.id')
                ->where(function ($q) use ($language) {
                    $q->where('product_category.language', $language);
                });
        })
            ->select('products.*', 'product_category.title as category_name')
            ->where('products.id', (int) $id)
            ->where('products.language', $language)
            ->first();

        // ถ้าไม่พบสินค้า
        if (!$product) {
            // abort(404, 'Product not found');
            $product = Product::join('product_category', function ($join) use ($language) {
                $join->on('products.category', '=', 'product_category.id')
                    ->where(function ($q) use ($language) {
                        $q->where('product_category.defaults', 1);
                    });
            })
                ->select('products.*', 'product_category.title as category_name')
                ->where('products.id', (int) $id)
                ->where('products.defaults', 1)
                ->first();
        }

        $lang_config_contact = [];
        $lang_config = LanguageConfig::where(['language' => $language, 'page_control' => 3])->orderBy('id', 'DESC')->get();
        if (!empty($lang_config)) {
            foreach ($lang_config as $key => $value) {
                $lang_config_contact[$value->param] = $value->title;
            }
        }

        // dd($lang_config_contact);

        return view('pages.product-detail.product-detail', compact('product', 'lang_config_contact'));
    }
}
