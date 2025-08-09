<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductCate;
use App\Models\Segment;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ProducrAgricultureController extends BaseController
{
    public function indexcategory(Request $request)
    {
        $cates = $this->getProductCate($request->language)->toarray();
        $segment = Segment::select('id', 'title')->orderBy('title', 'ASC')->get()->toarray();
        $catesCollection = collect($cates);
        $newCatesCollection = $catesCollection->map(function ($cate) use ($segment) {
            // ... transformation logic here ...
            $segmentIds = explode(',', rtrim($cate['segment_id'], ','));
            $segmentsData = collect($segment)->filter(function ($s) use ($segmentIds) {
                return in_array($s['id'], $segmentIds);
            });
            $cate['segments_data'] = $segmentsData->values()->all();
            return $cate;
        });

        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get product category success',
            'cates' => $newCatesCollection->toarray(),
        ], 200);
    }

    public function indexproduct(Request $request)
    {
        $product = $this->getProductAll($request->language);
        $segment = Segment::select('id', 'title', )->orderBy('title', 'ASC')->get();
        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get product all success',
            'product' => $product,
            'maxPriority' => Product::max('priority'),
            'segment' => $segment,
        ], 200);
    }

    public function createproductagricul(Request $request)
    {
        $this->getAuthUser();
        $files = $request->allFiles();
        $params = $request->all();

        $validator = Validator::make($request->all(), [

            'title' => 'string|required|unique:products,title',
            'category' => 'string|required',
            'seement' => 'string|required',
            'plant' => 'string|required',
            'fruit' => 'string|required',
            'taste' => 'string|required',
            'disease' => 'string|required',
            'link_youtube' => 'string|required',

            'display' => 'numeric|required',
            'p_new' => 'numeric|required',
            'priority' => 'numeric|required',
            'language' => 'string|required',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        try {
            DB::beginTransaction();

            $newFolder = "upload/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";
            $newFolderFile = "pdf/docs/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";
            /* Upload Thumbnail */
            $thumbnail = (isset($files['Image'])) ? $this->uploadImage($newFolder, $files['Image'], "", "", $params['ImageName']) : "";
            $doc_pdf = (isset($files['pdf'])) ? $this->uploadImage($newFolderFile, $files['pdf'], "", "", $params['pdfName'] . time()) : "";

            $this->updatePriority("products", $params['priority']);

            $productsCreated = Product::create([
                "thumbnail_link" => $thumbnail,
                "thumbnail_title" => $params['thumbnail_title'],
                "thumbnail_alt" => $params['thumbnail_alt'],
                "category" => $params['category'],
                "title" => $params['title'],
                "seement" => $params['seement'],
                "plant" => $params['plant'],
                "fruit" => $params['fruit'],
                "taste" => $params['taste'],
                "disease" => $params['disease'],
                "link_youtube" => $params['link_youtube'],
                "doc_link" => $doc_pdf,

                "priority" => $params['priority'],
                "display" => boolval($params['display']),
                "pin" => boolval($params['p_new']),
                "language" => $params['language'],
                "defaults" => $params['language'] == "th" ? 1 : 0,
            ]);

            DB::table('products')
                ->where('id', $productsCreated->id)
                ->update(['short_url' => $productsCreated->language . '/product-detail/' . $productsCreated->id]);
            DB::commit();
            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Product has been created successfully',
            ], 200);
        } catch (Exception $e) {
            DB::rollBack();
            return response([
                'status' => false,
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function updateproductagricul(Request $request, $id)
    {
        $this->getAuthUser();
        $files = $request->allFiles();
        $params = $request->all();

        $validator = Validator::make($request->all(), [
            'id' => 'numeric|required',
            'title' => 'string|required',
            'category' => 'string|nullable',
            'seement' => 'string|required',
            'Plant' => 'string|required',
            'Fruit' => 'string|required',
            'Taste' => 'string|required',
            'Disease' => 'string|required',
            'linkYoutub' => 'string|required',
            'docLink' => 'string|required',

            'display' => 'numeric|required',
            'pNew' => 'numeric|required',
            'priority' => 'numeric|required',
            'language' => 'string|nullable',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        try {
            DB::beginTransaction();

            $productUpdate = Product::where('id', $id)->where('language', $params['language'])->first();
            /* Upload Thumbnail */
            $newFolder = "upload/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";
            $newFolderFile = "pdf/docs/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";

            $thumbnail = (isset($files['Image'])) ? $this->uploadImage($newFolder, $files['Image'], "", "", $params['thumbnail_link']) : $params['thumbnail_link'];
            $doc_pdf = (isset($files['pdf'])) ? $this->uploadImage($newFolderFile, $files['pdf'], "", "", $params['docLink'] . time()) :$params['docLink'] ;


            $conditions = ['id' => $params['id'], 'language' => $params['language']];
            $values = [
                "thumbnail_link" => $thumbnail,
                "thumbnail_title" => $params['thumbnail_title'],
                "thumbnail_alt" => $params['thumbnail_alt'],
                "category" => $params['category'],
                "title" => $params['title'],
                "seement" => $params['seement'],
                "plant" => $params['Plant'],
                "fruit" => $params['Fruit'],
                "taste" => $params['Taste'],
                "disease" => $params['Disease'],
                "link_youtube" => $params['linkYoutub'],
                "doc_link" => $doc_pdf,
                // "link_facebook" => $params['link_facebook'],
                // "link_twitter" => $params['link_twitter'],

                "pin" => $params['pNew'],
                "display" => $params['display'],
                "updated_at" => date('Y-m-d H:i:s')
            ];

            DB::table('products')->updateOrInsert($conditions, $values);

            if ($productUpdate->priority != $params['priority']) {
                $this->updatePriority("products", $params['priority']);
            }

            DB::table('products')
                ->where($conditions)
                ->update(['short_url' => $params['language'] . '/product-detail/' . $params['id']]);
            DB::commit();
            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Product has been updated successfully',
            ], 200);
        } catch (Exception $e) {
            DB::rollBack();
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function destroyProduct($id, $language)
    {
        try {

            $product = Product::where('id', $id)->where('language', $language);
            $product->delete();

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Product has been deleted successfully',
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }
    }

    /* Private Function */
    private function getProductAll($language)
    {
        $data = Product::where(function ($query) use (&$language) {
            $query->where('language', $language)
                ->orWhere('defaults', 1);
        })
            // ->groupBy('id')
            ->orderBy('updated_at', 'DESC')
            ->get();

        return $data;
    }
}
