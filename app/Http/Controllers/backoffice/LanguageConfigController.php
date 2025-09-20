<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\LanguageAvailable;
use App\Models\LanguageConfig;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LanguageConfigController extends BaseController
{
    public function index()
    {
        try {
            $data = $this->queryLanguages();
            // $data = LanguageConfig::all();
            $availables = LanguageAvailable::select('abbv_name as language')->get();
            // dd($data->toArray());
            $filtered = [];
            if ($data) {
                foreach ($data as $key => $val) {
                    $arr = [];
                    $arr['token'] = base64_encode($val->param);
                    $arr['updated_at'] = $val->updated_at;
                    $arr['pageTitle'] = $val->pageTitle;
                    $arr['pageId'] = (int) $val->pageId;
                    $arr['param'] = $val->param;

                    /* Convert pattern  ด้วย language available  */
                    $titleList = explode("|#", $val->titles);
                    $langList = explode("|#", $val->languages);
                    $length = count($langList);

                    foreach ($availables as $langVal) {
                        $arr[$langVal->language] = "";
                        if ($length > 0) {
                            for ($i = 0; $i < $length; $i++) {
                                if ($langList[$i] === $langVal->language && isset($titleList[$i])) {
                                    $arr[$langVal->language] = $titleList[$i];
                                }
                            }
                        }
                    }
                    array_push($filtered, $arr);
                }
            }

            return response()->json([
                'message' => 'ok',
                'data' => $filtered,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function createLanguage(Request $request)
    {
        try {
            $checkParam = LanguageConfig::where('param', $request->param)->first();
            if ($checkParam) {
                return response()->json([
                    'message' => 'error',
                    'description' => "Duplicated data"
                ], 409);
            }

            $availables = LanguageAvailable::select('abbv_name as language')->get();
            if (!$availables) {
                return response()->json([
                    'message' => 'error',
                    'description' => 'Language no available.'
                ], 400);
            }

            $params = $request->all();
            foreach ($availables as $ln) {
                $creating = new LanguageConfig();
                $creating->param = $request->param;
                $creating->title = $params[$ln->language];
                $creating->page_control = $request->page;
                $creating->language = $ln->language;
                $creating->save();
            }
            return response()->json([
                'message' => 'success',
                'desciption' => 'Created successfully.',
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function editLanguage(Request $request)
    {
        try {
            $availables = LanguageAvailable::select('abbv_name as language')->get()->all();
            if (!$availables) {
                return response()->json([
                    'message' => 'error',
                    'description' => 'Language no available.'
                ], 400);
            }

            $params = $request->all();
            foreach ($availables as $ln) {
                LanguageConfig::where('param', $params['param'])->where('language', $ln->language)->update([
                    'title' => $params[$ln->language],
                    'page_control' => $params['page'],
                ]);
            }

            return response()->json([
                'message' => 'ok',
                'description' => "Language have been updated."
            ]);

        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => "Something went wrong.",
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function deleteLanguage($param)
    {
        $this->getAuthUser();
        try {
            LanguageConfig::where('param', $param)->delete();
            return response()->json([
                'message' => 'ok',
                'description' => 'Deleted sucessfully.'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    /* Private function */
    private function queryLanguages()
    {
        //    $sql = "SELECT  lc.id,
        //                     lc.param,
        //                     lc.updated_at,
        //                     categories.id as pageId,
        //                     categories.cate_title as pageTitle,
        //                     GROUP_CONCAT(lc.title SEPARATOR '|#') as titles,
        //                     GROUP_CONCAT(DISTINCT lc.language SEPARATOR '|#') as languages
        //             FROM language_configs as lc
        //             LEFT JOIN categories ON lc.page_control = categories.id AND lc.language = categories.language
        //             GROUP BY lc.param
        //             ORDER BY lc.title";
        //     $result = DB::select($sql, []);
        //     return $result;

        $sql = DB::table('language_configs as lc')
            ->select(
                DB::raw('MIN(lc.id) as id'),
                'lc.param',
                DB::raw('MIN(lc.updated_at) as updated_at'),
                DB::raw('MIN(c.id) as pageId'),
                DB::raw('MIN(c.cate_title) as pageTitle'),
                DB::raw("GROUP_CONCAT(lc.title ORDER BY lc.language SEPARATOR '|#') as titles"),
                DB::raw("GROUP_CONCAT(DISTINCT lc.language ORDER BY lc.language SEPARATOR '|#') as languages")
            )
            ->leftJoin('categories as c', function ($join) {
                $join->on('lc.page_control', '=', 'c.id')
                    ->on('lc.language', '=', 'c.language');
            })
            ->groupBy('lc.param')
            ->get();

        // $result = $sql->toArray();
        return $sql;
    }
}
