<?php

namespace App\Http\Controllers;

use App\Models\LanguageConfig;
use App\Models\Product;
use App\Models\ProductCate;
use App\Models\Segment;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Query\JoinClause;
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

        $cate_id = $request->query('id');
        $segment_id = $request->query('segment');

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

        // dd($request->all());
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
            ->join('product_category', function ($join) use ($language) {
                $join->on('product_category.id', '=', 'products.category')
                    ->where(function ($q) use ($language) {
                        $q->where('product_category.language', $language)
                            ->orWhere('product_category.defaults', 1);
                    });
            })
            ->where(function ($query) use (&$language) {
                $query->where(['products.display' => 1, 'products.language' => $language])
                    ->orWhere('products.defaults', 1);
            })
            ->when($cate_id || $segment_id, function ($query) {
                return $query->orderByRaw('products.priority + 0 ASC');
            }, function ($query) {
                return $query->orderBy('products.updated_at', 'DESC');
            })
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

        if ($cate_id && $segment_id) {
            // กรณีที่ 1: กรองทั้ง category และ segment
            $filtered = $ProductLists->where('category', $cate_id)->where('seement', $segment_id);
            $SegmentFiltered = $this->getSegmentsByCategory($cate_id);

        } elseif ($cate_id) {
            // กรณีที่ 2: กรองเฉพาะ category
            $filtered = $ProductLists->where('category', $cate_id);
            $SegmentFiltered = $this->getSegmentsByCategory($cate_id);

        } elseif ($segment_id) {
            // กรณีที่ 3: กรองเฉพาะ segment
            $filtered = $ProductLists->where('seement', $segment_id);
            $SegmentFiltered = $Segment;
            // ถ้าต้องการให้ $SegmentFiltered กรองตาม segment_id ด้วย สามารถเพิ่มโค้ดที่นี่ได้

        } else {
            // กรณีที่ 4: ไม่มีการส่งค่าใด ๆ มา
            $filtered = $ProductLists;
            $SegmentFiltered = $Segment;
        }
        // dd($filtered);

        $sorted = $filtered->sortByDesc('pin')->values(); // รี index ใหม่
// dd($sorted);
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
        // dd($filtered_products);
        $lang_config_product = [];
        $lang_config = LanguageConfig::where(['language' => $language, 'page_control' => 3])->orderBy('id', 'DESC')->get();
        if (!empty($lang_config)) {
            foreach ($lang_config as $key => $value) {
                $lang_config_product[$value->param] = $value->title;
            }
        }

        return view('pages.product.product', compact('ProductCate', 'filtered_products', 'SegmentFiltered', 'lang_config_product'));
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
