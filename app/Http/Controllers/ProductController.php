<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCate;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;

class ProductController extends Controller
{
    public function index(Request $request, $language)
    {
        $menu_product = collect([
            (object) [
                'id' => 1,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 2,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 3,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 4,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 5,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 6,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 7,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 8,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 9,
                'title' => 'SWEET PEPPER',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 10,
                'title' => 'SWEET PEPPER',
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 11,
                'title' => 'Rice',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 12,
                'title' => 'Rice',
                'cate_id' => 1,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m1.png',
            ],
            (object) [
                'id' => 13,
                'title' => 'Corn',
                'cate_id' => 2,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m2.png',
            ],
            (object) [
                'id' => 14,
                'title' => 'Corn',
                'cate_id' => 2,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m2.png',
            ],
            (object) [
                'id' => 15,
                'title' => 'Corn',
                'cate_id' => 2,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m2.png',
            ],
            (object) [
                'id' => 16,
                'title' => 'Corn',
                'cate_id' => 2,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m2.png',
            ],
            (object) [
                'id' => 17,
                'title' => 'Wheat',
                'cate_id' => 3,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m3.png',
            ],
            (object) [
                'id' => 18,
                'title' => 'Wheat',
                'cate_id' => 3,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m3.png',
            ],
            (object) [
                'id' => 19,
                'title' => 'Wheat',
                'cate_id' => 3,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m3.png',
            ],
            (object) [
                'id' => 20,
                'title' => 'Wheat',
                'cate_id' => 3,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m3.png',
            ],
            (object) [
                'id' => 21,
                'title' => 'Soybean',
                'cate_id' => 4,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m4.png',
            ],
            (object) [
                'id' => 22,
                'title' => 'Soybean',
                'cate_id' => 4,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m4.png',
            ],
            (object) [
                'id' => 23,
                'title' => 'Soybean',
                'cate_id' => 4,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m4.png',
            ],
            (object) [
                'id' => 24,
                'title' => 'Sugarcane',
                'cate_id' => 5,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m6.png',
            ],
            (object) [
                'id' => 25,
                'title' => 'Sugarcane',
                'cate_id' => 5,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/m6.png',
            ],
            (object) [
                'id' => 26,
                'title' => 'Sugarcane',
                'cate_id' => 5,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/m6.png',
            ],
            (object) [
                'id' => 27,
                'title' => 'Banana',
                'cate_id' => 6,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/Rectangle 409 (2).png',
            ],
            (object) [
                'id' => 28,
                'title' => 'Banana',
                'cate_id' => 6,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/Rectangle 409 (2).png',
            ],
            (object) [
                'id' => 29,
                'title' => 'Banana',
                'cate_id' => 6,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/Rectangle 409 (2).png',
            ],
            (object) [
                'id' => 30,
                'title' => 'Sweet Pepper',
                'cate_id' => 7,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/Rectangle 409 (3).png',
            ],
            (object) [
                'id' => 31,
                'title' => 'Sweet Pepper',
                'cate_id' => 7,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/Rectangle 409 (3).png',
            ],
            (object) [
                'id' => 32,
                'title' => 'Sweet Pepper',
                'cate_id' => 7,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/Rectangle 409 (3).png',
            ],
            (object) [
                'id' => 33,
                'title' => 'Melon',
                'cate_id' => 8,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/Rectangle 409 (1).png',
            ],
            (object) [
                'id' => 34,
                'title' => 'Melon',
                'cate_id' => 8,
                'product_code' => 'ALL 2045',
                'product_new' => 0,
                'thumbnail' => '/image/Rectangle 409 (1).png',
            ],
            (object) [
                'id' => 35,
                'title' => 'Melon',
                'cate_id' => 8,
                'product_code' => 'ALL 2045',
                'product_new' => 1,
                'thumbnail' => '/image/Rectangle 409 (1).png',
            ],
        ]);

        // Define the columns to be selected to avoid repetition.
        $selectedColumns = [
            'id',
            'thumbnail_link',
            'thumbnail_title',
            'thumbnail_alt',
            'title'
        ];

        // First, try to get categories for the specified language.
        $MenuProductCrop = ProductCate::with(['segmentsChild'])
           ->select($selectedColumns)
            ->where('language', $language)
            ->get();
dd($MenuProductCrop);
        // If no categories are found for the language, get the default ones.
        if ($MenuProductCrop->isEmpty()) {
            $MenuProductCrop = ProductCate::select($selectedColumns)
                ->where('defaults', 1)
                ->get();
        }

        $ProductLists = Product::join('product_category', 'products.category', '=', 'product_category.id')
            ->select('products.*', 'product_category.title AS c_title')
            ->where('products.display', 1)
            ->where('products.language', $language)
            ->get();
        if ($ProductLists->isEmpty()) {
            $ProductLists = Product::join('product_category', 'products.category', '=', 'product_category.id')
                ->select('products.*', 'product_category.title AS c_title')
                ->where('products.display', 1)
                ->where('products.defaults', 1)
                ->get();
        }
        // dd($ProductLists);
        $cate_id = $request->query('id');

        $filtered = $cate_id
            ? $ProductLists->where('id', $cate_id)
            : $ProductLists;

        $sorted = $filtered->sortByDesc('pin')->values(); // รี index ใหม่

        // ---- Pagination ----
        $perPage = 12;
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $currentItems = $sorted->forPage($currentPage, $perPage);

        $filtered_products = new LengthAwarePaginator(
            $currentItems,
            $sorted->count(),
            $perPage,
            $currentPage,
            ['path' => $request->url(), 'query' => $request->query()]
        );

        return view('pages.product.product', compact('MenuProductCrop', 'filtered_products'));
    }
}
