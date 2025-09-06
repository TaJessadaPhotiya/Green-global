<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCate;
use App\Models\Segment;
use DB;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;

class ProductController extends Controller
{
    public function index(Request $request, $language)
    {
        // Define the columns to be selected to avoid repetition.
        $selectedColumns = [
            'id',
            'thumbnail_link',
            'thumbnail_title',
            'thumbnail_alt',
            'title',
            'segment_id',
            'defaults',
            'language'
        ];
        $Segment = Segment::select('id', 'title')->orderBy('title', 'ASC')->get();

        // First, try to get categories for the specified language.
        $MenuProductCrop = ProductCate::select($selectedColumns)
            ->where(function ($q) use ($language) {
                $q->where('language', $language)
                    ->orWhere('defaults', 1);
            })
            ->where('display', 1)
            ->orderByRaw('priority + 0 ASC')
            ->get()
            ->groupBy('id')   // group ตาม id
            ->map(function ($items) use ($language) {
                // หาตัวที่ตรงกับ language
                $match = $items->firstWhere('language', $language);
                // ถ้าไม่มีให้ใช้ defaults
                return $match ?? $items->firstWhere('defaults', 1);
            })
            ->values();  // reset index

        // dd($MenuProductCrop);
        // If no categories are found for the language, get the default ones.
        // if ($MenuProductCrop->isEmpty()) {
        //     $MenuProductCrop = ProductCate::select($selectedColumns)
        //         ->where('defaults', 1)
        //         ->get();
        // }

        $ProductCate = collect($MenuProductCrop)->map(function ($cate) use ($Segment) {
            $segmentIds = explode(',', rtrim($cate->segment_id, ','));
            $segmentsData = collect($Segment)->filter(function ($s) use ($segmentIds) {
                return in_array($s['id'], $segmentIds);
            });
            $cate['segments_data'] = $segmentsData->values()->all();
            return $cate;
        });

        $ProductLists = Product::select('products.*', 'product_category.title AS c_title', 'product_category.segment_id AS c_segment_id')
            ->leftJoin('product_category', 'product_category.id', '=', 'products.category')
            ->where(['products.language' => $language, 'products.display' => 1])
            ->orWhere('products.defaults', 1)
            ->orderBy('priority', 'ASC')
            ->get()
            ->groupBy('id')   // group ตาม id
            ->map(function ($items) use ($language) {
                // หาตัวที่ตรงกับ language
                $match = $items->firstWhere('language', $language);
                // ถ้าไม่มีให้ใช้ defaults
                return $match ?? $items->firstWhere('defaults', 1);
            })
            ->values();  // reset index

        // dd($ProductLists);

        // if ($ProductLists->isEmpty()) {
        //     $ProductLists = Product::join('product_category', 'products.category', '=', 'product_category.id')
        //         ->select('products.*', 'product_category.title AS c_title', 'product_category.segment_id AS c_segment_id')
        //         ->where('products.display', 1)
        //         ->where('products.defaults', 1)
        //         ->get();
        // }

        $cate_id = $request->query('id');
        $segment_id = $request->query('segment');

        if ($segment_id) {
            $ProductLists = $ProductLists->filter(function ($product) use ($segment_id) {
                return in_array($segment_id, explode(',', $product->c_segment_id));
            });
        }
        if ($cate_id) {
            $filtered = $ProductLists->where('category', $cate_id);
            $SegmentFiltered = $this->getSegmentsByCategory($cate_id);
        } else {
            $filtered = $ProductLists;
            $SegmentFiltered = $Segment;
        }


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

        return view('pages.product.product', compact('ProductCate', 'filtered_products', 'SegmentFiltered'));
    }

    /* Private Function */
    private function getSegmentsByCategory($categoryId)
    {
        return DB::table('products')
            ->join('product_category', 'products.category', '=', 'product_category.id')
            ->join('segments', function ($join) {
                $join->whereRaw('FIND_IN_SET(segments.id, product_category.segment_id)');
            })
            ->where('product_category.id', $categoryId)
            ->select('segments.id', 'segments.title')
            ->distinct()
            ->get();
    }
}
