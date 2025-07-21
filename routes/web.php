<?php

use App\Http\Controllers\FavoriteController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\NewsDetailController;


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/about', [AboutController::class, 'index'])->name('booking');
Route::get('/menu', [MenuController::class, 'index'])->name('menu');
Route::get('/service', [ServiceController::class, 'index'])->name('service');
Route::get('/news', [NewsController::class, 'index'])->name('news');
Route::get('/contact', [ContactController::class, 'index'])->name('contact');
Route::get('/detail/{id}', [DetailController::class, 'index'])->name('detail');
Route::get('/news-detail/{id}', [NewsDetailController::class, 'index'])->name('news-detail');






