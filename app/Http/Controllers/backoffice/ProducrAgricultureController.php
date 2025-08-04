<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ProducrAgricultureController extends BaseController
{
    public function indexcategory(Request $request)
    {
        $cates = $this->getProductCate($request->language);
        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get product category success',
            'cates' => $cates,
        ], 200);
    }

    public function indexproduct(Request $request)
    {
        $product = $this->getProductAll($request->language);
        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get product all success',
            'product' => $product,
            'maxPriority' => Product::max('priority')
        ], 200);
    }

    public function createproductagricul(Request $request)
    {
        $this->getAuthUser();
        $files = $request->allFiles();
        $params = $request->all();

        $validator = Validator::make($request->all(), [
            'slug' => 'string|required|unique:products,slug',
            'title' => 'string|required',
            'category' => 'string|required',
            'description' => 'string|required',
            'seement' => 'string|nullable',
            'hr' => 'string|nullable',
            'ir' => 'string|nullable',

            'display' => 'numeric|required',
            'pin' => 'numeric|required',
            'priority' => 'numeric|required',
            'language' => 'string|required',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        try {
            DB::beginTransaction();

            $newFolder = "upload/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";

            /* Upload Thumbnail */
            $thumbnail = (isset($files['Image'])) ? $this->uploadImage($newFolder, $files['Image'], "", "", $params['ImageName']) : "";

            $this->updatePriority("products", $params['priority']);

            $productsCreated = Product::create([
                "slug" => $params['slug'],
                "title" => $params['title'],
                "category" => $params['category'],
                "description" => $params['description'],
                "thumbnail_link" => $thumbnail,
                "thumbnail_title" => $params['thumbnail_title'],
                "thumbnail_alt" => $params['thumbnail_alt'],
                "seement" => $params['seement'],
                "hr" => $params['hr'],
                "ir" => $params['ir'],
                // "link_facebook" => $params['link_facebook'],
                // "link_twitter" => $params['link_twitter'],

                "priority" => $params['priority'],
                "display" => boolval($params['display']),
                "pin" => boolval($params['pin']),
                "language" => $params['language'],
                "defaults" => 1,
            ]);
            DB::table('products')
                ->where('id',  $productsCreated->id)
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
            'description' => 'string|nullable',
            'display' => 'numeric|required',
            'pin' => 'numeric|required',
            'priority' => 'numeric|required',
            'language' => 'string|nullable',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        try {
            DB::beginTransaction();

            $productUpdate = Product::findOrFail($id);
            /* Upload Thumbnail */
            $newFolder = "upload/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";
            $thumbnail = (isset($files['Image'])) ? $this->uploadImage($newFolder, $files['Image'], "", "", $params['ImageName']) : $params['thumbnail_link'];

            $conditions  = ['id' => $params['id'], 'language' => $params['language']];
            $values = [
                'id' => $params['id'],
                "slug" => $params['slug'],
                "title" => $params['title'],
                "description" => $params['description'],
                "thumbnail_link" => $thumbnail,
                "thumbnail_title" => $params['thumbnail_title'],
                "thumbnail_alt" => $params['thumbnail_alt'],
                "category" => $params['category'],
                "seement" => $params['seement'],
                "hr" => $params['hr'],
                "ir" => $params['ir'],
                // "link_facebook" => $params['link_facebook'],
                // "link_twitter" => $params['link_twitter'],

                "language" => $params['language'],

                "priority" => $params['priority'],
                "pin" => $params['pin'],
                "display" => $params['display'],
                "updated_at" => date('Y-m-d H:i:s')
            ];

            if ($productUpdate->priority != $params['priority']) {
                $this->updatePriority("products", $params['priority']);
            }

            DB::table('products')->updateOrInsert($conditions, $values);

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
