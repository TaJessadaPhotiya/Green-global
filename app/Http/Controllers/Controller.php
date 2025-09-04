<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use stdClass;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function getWebInfo($typeIdIn = "", $language = "")
    {
        /* custom select by infoTypeId */
        if ($typeIdIn !== "")
            $typeIdIn = " WHERE i.info_type IN ($typeIdIn) ";
        if ($language !== "")
            $language = " AND i.language = '$language'";

        $webInfos = DB::select("SELECT
            i.admin_level,
            i.created_at,
            i.defaults,
            i.info_attribute as attribute,
            i.info_display as display,
            i.info_id as id,
            i.info_link as link,
            i.info_iframe as iframe,
            i.info_param as param,
            i.info_priority as priority,
            i.info_title as description,
            i.info_value as value,
            i.language as language,
            i.updated_at,
            i.info_type as infoTypeId,
            t.type_name as infoTypeName,
            t.title as infoTypeTitle
         FROM `web_infos` as i
         INNER JOIN web_info_types as t on i.info_type = t.id AND i.language = t.language
         $typeIdIn
         $language
         ORDER BY infoTypeId ASC, priority ASC ");
        return $webInfos;
    }

    /**
     *  @infos = ข้อมูลที่นำมันจัดกรุ๊ป
     *  @skips = true จะไม่นำข้อมูลที่ไม่มีค่าใน value , link ออกจาก objects
     */
    public function infoSetting($infos, $skips = false, $backoffice = false)
    {
        $infoSetting = new stdClass();
        if (!empty($infos)) {
            foreach ($infos as $val) {
                if ($skips && $val->value == "" && $val->link == "")
                    continue;
                $type = $val->infoTypeName;
                $param = $val->param;
                if (!isset($infoSetting->$type))
                    $infoSetting->$type = new stdClass();
                if (!isset($infoSetting->$type->$param))
                    $infoSetting->$type->$param = new stdClass();
                $infoSetting->$type->$param->token = base64_encode($val->id);
                $infoSetting->$type->$param->value = ($val->value) ? $val->value : "";
                $infoSetting->$type->$param->link = ($val->link) ? $val->link : "";
                $infoSetting->$type->$param->iframe = ($val->iframe) ? $val->iframe : "";
                $infoSetting->$type->$param->attribute = ($val->attribute) ? $val->attribute : "";
                $infoSetting->$type->$param->priority = (int) $val->priority;
                $infoSetting->$type->$param->language = strtolower($val->language);
                $infoSetting->$type->$param->description = $val->description;
                $infoSetting->$type->$param->display = ($val->display) ? true : false;
                if ($backoffice) {
                    $infoSetting->$type->$param->id = ($val->display) ? true : false;
                    $infoSetting->$type->$param->infoType = ($val->display) ? true : false;
                    $infoSetting->$type->$param->infoTypeId = ($val->display) ? true : false;
                    $infoSetting->$type->$param->isDetail = ($val->display) ? true : false;
                    $infoSetting->$type->$param->param = ($val->display) ? true : false;
                }
            }
        }
        return $infoSetting;
    }

    public function uploadImage($folderPath = "upload/", $image = NULL, $preName = "", $postName = "", $customName = NULL)
    {
        if ($image) {
            /* Checking folder */
            if (!file_exists($folderPath)) {
                File::makeDirectory($folderPath, $mode = 0777, true, true);
            }
            $extName = "." . $image->extension();
            $name = ($customName !== NULL) ? str_replace($extName, "", $customName) : time();
            $fullName = $preName . $name . $postName;
            $newImageName = $fullName . $extName;
            if (file_exists($folderPath . $newImageName)) {
                for ($ii = 1; true; $ii++) {
                    $editNameDuplicate = $fullName . "({$ii})" . $extName;
                    if (!file_exists($folderPath . $editNameDuplicate)) {
                        $newImageName = $editNameDuplicate;
                        break;
                    }
                }
            }
            if ($image->move($folderPath, $newImageName)) {
                return $folderPath . $newImageName;
            }
        }
        return false;
    }

    public function deleteFile($path)
    {
        if (File::exists(public_path($path))) {
            File::delete(public_path($path));
        }
        return File::exists(public_path($path));
    }

    public function categoryCreateList($language)
    {
        /* ถ้าอยากได้ ROOT ให้เพิ่ม `rootCategory` subquery ลงไป
         *  (SELECT GROUP_CONCAT(id) FROM categories as cg WHERE cg.cate_root_id = categories.cate_root_id GROUP BY cate_root_id ) as `rootCategory`
         * */
        // $sql = "SELECT
        //             c.id,
        //             c.cate_title as title,
        //             c.cate_url as slug,
        //             c.cate_parent_id as parentId,
        //             c.cate_root_id as rootId,
        //             c.cate_level as cateLevel,
        //             c.cate_priority as priority,
        //             c.language,
        //             c.is_menu as isMenu,
        //             c.is_leftside as leftSide,
        //             c.is_topside as topSide,
        //             c.is_rightside as rightSide,
        //             c.is_bottomside as bottomSide,
        //             c.defaults
        //         FROM categories as c
        //         INNER JOIN (
        //             SELECT id as cateId, language as cateLang
        //             FROM categories as g
        //             WHERE g.language = :lang OR g.defaults = 1
        //             GROUP BY g.id, g.language
        //         ) as cate ON cate.cateId = c.id AND cate.cateLang = c.language
        //         WHERE c.is_menu = 1
        //         ORDER BY cateLevel DESC ,  priority ASC";

        $result = Category::with([
            'childrenData' => function ($query) use ($language) {
                $query->where('language', $language)
                    ->orWhere('defaults', 1);
            }
        ])
            ->select(
                'id',
                'cate_title as title',
                'cate_url as slug',
                'cate_parent_id as parentId',
                'cate_root_id as rootId',
                'cate_level as cateLevel',
                'cate_priority as priority',
                'language',
                'is_menu as isMenu',
                'is_leftside as leftSide',
                'is_topside as topSide',
                'is_rightside as rightSide',
                'is_bottomside as bottomSide',
                'defaults'
            )
            ->where(['is_menu' => 1, 'language' => $language])
            ->orWhere('defaults', 1)
            ->orderBy('cateLevel', 'DESC')
            ->orderBy('priority', 'ASC')
            ->get();


        return $this->categoryConvertGroup($result);
        // return $result;

    }

    private function categoryConvertGroup($query)
    {
        $resultData = [];
        if (!empty($query)) {
            foreach ($query as $val) {
                $val->hasChildren = isset($resultData[$val->id]);
                $val->childrenData = $resultData[$val->id] ?? [];
                $resultData[$val->parentId][] = $val;
            }
        }
        return $resultData[0] ?? null;
    }
}
