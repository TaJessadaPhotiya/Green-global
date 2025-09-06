<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\ProductCate;
use App\Models\Segment;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ProductCateController extends BaseController
{
    public function cateIndex(Request $request)
    {
        $cates = $this->getProductCate($request->language);

        $topic = Segment::select('id', 'title', 'is_active')->orderBy('title', 'ASC')->get();
        // dd($topic);
        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get product cate success',
            'cates' => $cates,
            'maxPriority' => ProductCate::max('priority'),
            'tags' => $topic,
        ], 200);
    }

    public function updatePin(Request $request, $id)
    {
        try {
            $cate = ProductCate::where('id', $id)
                ->where('language', $request->language)
                ->update(['pin' => $request->pin]);

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'update pin successfully',
                'updated' => $cate,
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }
    }

    public function updateDisplay(Request $request, $id)
    {
        try {
            $cate = ProductCate::where('id', $id)
                ->where('language', $request->language)
                ->update(['display' => $request->display]);

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'update display successfully',
                'updated' => $cate,
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }
    }

    public function createSegment(Request $request)
    {
        $this->getAuthUser();
        $params = $request->all();

        $validator = Validator::make($request->all(), [
            'title' => 'string|required|unique:segments,title',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        try {
            $segment = Segment::create([
                'title' => $params['title'],
            ]);

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Segment has been created successfully',
                'segment' => $segment,
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function updateSegment(Request $request, $id)
    {
        $this->getAuthUser();
        $params = $request->all();

        $validator = Validator::make($request->all(), [
            'title' => 'string|required|unique:segments,title',
        ]);

          if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        $segment = Segment::find($id);
        if (!$segment) {
            return response([
                'message' => 'not found',
                'description' => 'Segment not found',
            ], 404);
        }

        $segment->title = $params['title'];
        $segment->save();

        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Segment has been updated successfully',
            'segment' => $segment,
        ], 200);
    }

    public function createProductcate(Request $request)
    {
        $this->getAuthUser();
        $files = $request->allFiles();
        $params = $request->all();

        $validator = Validator::make($request->all(), [
            'title' => 'string|required',
            'details' => 'string|nullable',
            'segment' => 'string|nullable',
            'display' => 'numeric|required',
            'pin' => 'numeric|required',
            'priority' => 'numeric|required',
            'language' => 'string|nullable',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        $segment = [];

        if (!empty($params['segment']) && is_string($params['segment'])) {
            $decoded = json_decode($params['segment'], true);
            if (json_last_error() === JSON_ERROR_NONE && is_array($decoded)) {
                $segment = $decoded;
            }
        }
        // ตรวจสอบว่าไม่มี 'id' และมี 'new' เป็น 'y' เพื่อให้แน่ใจว่าเป็นข้อมูลใหม่ที่ต้องสร้าง
        $segment_not_id = array_filter($segment, function ($item): bool {
            return isset($item['new']) && $item['new'] === 'y';
        });
        // กรองเอาเฉพาะข้อมูลที่มี 'id'
        $segment_is_id = array_filter($segment, function ($item): bool {
            return isset($item['id']);
        });

        try {
            DB::beginTransaction();

            $newFolder = "upload/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";

            /* Upload Thumbnail */
            $thumbnail = (isset($files['Image'])) ? $this->uploadImage($newFolder, $files['Image'], "", "", $params['ImageName']) : "";

            $this->updatePriority("product_category", $params['priority']);

            $idTag = [];
            // เพิ่มข้อมูลใหม่ลงในตารางและเก็บ id ที่ได้
            if (!empty($segment_not_id)) {
                foreach ($segment_not_id as $tag) {
                    $catTag = Segment::create([
                        'title' => $tag['title']
                    ]);
                    array_push($idTag, $catTag->id);
                }
            }
            // นำ id ของกลุ่มที่มี id อยู่แล้วมารวมกับ $idTag
            if (!empty($segment_is_id)) {
                foreach ($segment_is_id as $tag) {
                    array_push($idTag, $tag['id']);
                }
            }

            ProductCate::create([
                "title" => $params['title'],
                "segment_id" => implode(',', $idTag) . ',',
                "details" => $params['details'],
                "description" => $params['description'],
                "thumbnail_link" => $thumbnail,
                "thumbnail_title" => $params['thumbnail_title'],
                "thumbnail_alt" => $params['thumbnail_alt'],

                "priority" => $params['priority'],
                "display" => boolval($params['display']),
                "pin" => boolval($params['pin']),
                "language" => $params['language'],
                "defaults" => 1,
            ]);

            DB::commit();
            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Product care has been created successfully',
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

    public function updateProductcate(Request $request, $id)
    {
        $this->getAuthUser();
        $files = $request->allFiles();
        $params = $request->all();

        $validator = Validator::make($request->all(), [
            'id' => 'numeric|required',
            'title' => 'string|required',
            'details' => 'string|nullable',
            'description' => 'string|nullable',
            'display' => 'numeric|required',
            'pin' => 'numeric|required',
            'priority' => 'numeric|required',
            'language' => 'string|nullable',
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        $segment = [];

        if (!empty($params['segment']) && is_string(value: $params['segment'])) {
            $decoded = json_decode($params['segment'], true);
            if (json_last_error() === JSON_ERROR_NONE && is_array($decoded)) {
                $segment = $decoded;
            }
        }
        // ตรวจสอบว่าไม่มี 'id' และมี 'new' เป็น 'y' เพื่อให้แน่ใจว่าเป็นข้อมูลใหม่ที่ต้องสร้าง
        $segment_not_id = array_filter($segment, function ($item): bool {
            return isset($item['new']) && $item['new'] === 'y';
        });
        // กรองเอาเฉพาะข้อมูลที่มี 'id'
        $segment_is_id = array_filter($segment, function ($item): bool {
            return isset($item['id']);
        });

        try {
            DB::beginTransaction();

            $cateUpdate = ProductCate::findOrFail($id);

            /* Upload Thumbnail */
            $newFolder = "upload/" . date('Y') . "/" . date('m') . "/" . date('d') . "/";
            $thumbnail = (isset($files['Image'])) ? $this->uploadImage($newFolder, $files['Image'], "", "", $params['ImageName']) : $params['thumbnail_link'];

            $idTag = [];
            // เพิ่มข้อมูลใหม่ลงในตารางและเก็บ id ที่ได้
            if (!empty($segment_not_id)) {
                foreach ($segment_not_id as $tag) {
                    $catTag = Segment::create([
                        'title' => $tag['title']
                    ]);
                    array_push($idTag, $catTag->id);
                }
            }
            // นำ id ของกลุ่มที่มี id อยู่แล้วมารวมกับ $idTag
            if (!empty($segment_is_id)) {
                foreach ($segment_is_id as $tag) {
                    array_push($idTag, $tag['id']);
                }
            }

            $conditions = ['id' => $params['id'], 'language' => $params['language']];
            $values = [
                'id' => $params['id'],
                "title" => $params['title'],
                "segment_id" => implode(',', $idTag) . ',',
                "details" => $params['details'],
                "description" => $params['description'],
                "thumbnail_link" => $thumbnail,
                "thumbnail_title" => $params['thumbnail_title'],
                "thumbnail_alt" => $params['thumbnail_alt'],
                "language" => $params['language'],
                "priority" => $params['priority'],
                "updated_at" => date('Y-m-d H:i:s')
            ];

            if ($cateUpdate->priority != $params['priority']) {
                $this->updatePriority("product_category", $params['priority']);
            }

            DB::table('product_category')->updateOrInsert($conditions, $values);

            DB::commit();
            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Product cate has been updated successfully',
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

    public function deleteProductcate($id, $language)
    {
        try {

            $product = ProductCate::where('id', $id)->where('language', $language);
            $product->delete();

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Product cate has been deleted successfully',
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }
    }

    public function deleteSegment($id)
    {
        try {
            DB::beginTransaction();

            $segment = Segment::find($id);
            $segment->delete();

            DB::commit();
            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Segment has been deleted successfully',
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }

    }

}
