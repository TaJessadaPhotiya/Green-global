<?php

use App\Http\Controllers\FavoriteController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\VisionController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\TermController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\NewsDetailController;


Route::group(['prefix' => '{language}', 'where' => ['language' => 'th|en|ar']], function () {
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/vision', [VisionController::class, 'index'])->name('vision');
    Route::get('/news', [NewsController::class, 'index'])->name('news');
    Route::get('/product', [ProductController::class, 'index'])->name('product');
    Route::get('/term', [TermController::class, 'index'])->name('term');
    Route::get('/contact', [ContactController::class, 'index'])->name('contact');
    Route::get('/about', [AboutController::class, 'index'])->name('about');
    Route::get('/detail/{id}', [DetailController::class, 'index'])->name('detail');
    Route::get('/news-detail/{id}', [NewsDetailController::class, 'index'])->name('news-detail');
});






