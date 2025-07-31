<?php

use App\Http\Controllers\backoffice\AdminController;
use App\Http\Controllers\backoffice\ProducrAgricultureController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\backoffice\AuthBackOfficeController;
use App\Http\Controllers\backoffice\CategoryController;
use App\Http\Controllers\backoffice\ConfigController;
use App\Http\Controllers\backoffice\LanguageConfigController;
use App\Http\Controllers\backoffice\MemberController;
use App\Http\Controllers\backoffice\MessagesController;
use App\Http\Controllers\backoffice\PostController;
use App\Http\Controllers\backoffice\WebInfoController;
use App\Http\Controllers\backoffice\ProductCateController;
use App\Http\Controllers\backoffice\SlideController;
use App\Http\Controllers\backoffice\UtilController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::prefix('backoffice/v1')->group(function () {

    Route::post('register', [AuthBackOfficeController::class, 'registerAccount']);
    Route::post('login', [AuthBackOfficeController::class, 'loginAccount']);
    Route::post('forget-password', [AuthBackOfficeController::class, 'onSubmitForgetPassword']);
    Route::post('reset-password', [AuthBackOfficeController::class, 'onResetPassword']);
    Route::get('webinfo/datafavicon', [WebInfoController::class, 'guestindex']);

    Route::middleware('auth:sanctum')->group(function () {

        Route::post('account/settings', [AuthBackOfficeController::class, 'getAccountSettings']);
        Route::post('account/token/revoke/current', [AuthBackOfficeController::class, 'revokeCurrentToken']);
        Route::post('account/token/revoke/token_id', [AuthBackOfficeController::class, 'revokeTokenByID']);
        Route::post('account/token/revoke/all', [AuthBackOfficeController::class, 'revokeAllToken']);
        /* Infomation Page */
        Route::prefix('webinfo/')->group(function () {
            Route::get('data', [WebInfoController::class, 'index']);
            Route::post('details', [WebInfoController::class, 'updateWebDetails']);
            Route::delete('image/{language}/{position}', [WebInfoController::class, 'deleteImage']);
            Route::post('create', [WebInfoController::class, 'createWebInfo']);
            Route::post('token/{token}', [WebInfoController::class, 'addWebInfo']);
            Route::patch('token/{token}', [WebInfoController::class, 'editWebInfo']);
            Route::patch('display/toggle', [WebInfoController::class, 'toggleDisplayByToken']);
            Route::delete('{language}/{token}', [WebInfoController::class, 'deleteWebInfoByInfoId']);
        });
        /* Product Page */
        Route::prefix('productcate/')->group(function () {
            Route::get('data', [ProductCateController::class, 'cateIndex']);
            Route::patch('updatepin/{id}', [ProductCateController::class, 'updatePin']);
            Route::patch('updatedisplay/{id}', [ProductCateController::class, 'updateDisplay']);
            Route::post('create', [ProductCateController::class, 'createProductcate']);
            Route::post('update/{id}', [ProductCateController::class, 'updateProductcate']);
            Route::delete('destroy/{id}/{language}', [ProductCateController::class, 'deleteProductcate']);
        });
        /* agriculture Page */
        Route::prefix('productagricul/')->group(function () {
            Route::get('product', [ProducrAgricultureController::class, 'indexproduct']);
            Route::get('category', [ProducrAgricultureController::class, 'indexcategory']);
            Route::post('create', [ProducrAgricultureController::class, 'createproductagricul']);
            Route::post('update/{id}', [ProducrAgricultureController::class, 'updateproductagricul']);
            Route::delete('destroy/{id}/{language}', [ProducrAgricultureController::class, 'destroyProduct']);
        });
        /* member Page */
        Route::prefix('member/')->group(function () {
            Route::get('data', [MemberController::class, 'indexmember']);
            Route::post('update', [MemberController::class, 'updatemember']);
            Route::delete('destroy/{id}', [MemberController::class, 'destroymember']);

            Route::delete('destroy/user/{id}', [MemberController::class, 'destroyuser']);
        });
        /* messages Page */
        Route::prefix('messages/')->group(function () {
            Route::get('data', [MessagesController::class, 'index']);
            Route::delete('delete/{id}', [MessagesController::class, 'destroyMessages']);
        });
        /* Slide Page */
        Route::prefix('slide/')->group(function () {
            Route::get('data', [SlideController::class, 'index']);
            Route::get('data/{id}', [SlideController::class, 'getSlideById']);
            Route::post('create', [SlideController::class, 'createSlide']);
            Route::post('update/{id}', [SlideController::class, 'updateSlideById']);
            Route::delete('{language}/{token}', [SlideController::class, 'deleteWebInfoByInfoId']);
        });
        /* Category Page */
        Route::prefix('category/')->group(function () {
            Route::get('data', [CategoryController::class, 'index']);
            Route::post('create', [CategoryController::class, 'createCategory']);
            Route::post('update/{id}', [CategoryController::class, 'updateCategory']);
            Route::delete('{language}/{token}', [CategoryController::class, 'deleteCategory']);
            Route::get('menu', [CategoryController::class, 'getCateMenu']);
        });
        /* Content Page */
        Route::prefix('content/')->group(function () {
            Route::get('data', [PostController::class, 'index']);
            Route::post('create', [PostController::class, 'createContent']);
            Route::post('update/{id}', [PostController::class, 'updateContent']);
            Route::delete('{language}/{token}', [PostController::class, 'deleteContent']);
        });
        /* Admin Page */
        Route::prefix('admin/')->group(function () {
            Route::get('data', [AdminController::class, 'index']);
            Route::post('edit', [AdminController::class, 'editAdminAccount']);
            Route::delete('{language}/{token}', [AdminController::class, 'deleteAdminAccount']);
        });
        /* Language Config Page */
        Route::prefix('language/')->group(function () {
            Route::get('data', [LanguageConfigController::class, 'index']);
            Route::post('create', [LanguageConfigController::class, 'createLanguage']);
            Route::patch('edit', [LanguageConfigController::class, 'editLanguage']);
            Route::delete('delete/{param}', [LanguageConfigController::class, 'deleteLanguage']);
        });
        /* Configuration Page */
        Route::prefix('config/')->group(function () {
            Route::get('data', [ConfigController::class, 'index']);
            Route::delete('language/token/{token}', [ConfigController::class, 'deleteConfigLanguage']);
            Route::post('language/create', [ConfigController::class, 'createLanguage']);
            Route::post('data_type/create', [ConfigController::class, 'createDataType']);
            Route::delete('data_type/token/{token}', [ConfigController::class, 'deleteConfigDataType']);
            Route::post('ad_type/create', [ConfigController::class, 'createAdType']);
            Route::patch('ad_type/edit', [ConfigController::class, 'editAdType']);
            Route::delete('ad_type/token/{token}', [ConfigController::class, 'deleteConfigAdType']);
            Route::post('upload/manual', [ConfigController::class, 'uploadManual']);
        });
        /* Utility */
        Route::post('ckeditor/upload/image', [UtilController::class, 'ckeditorUploadImage']);
    });
});
