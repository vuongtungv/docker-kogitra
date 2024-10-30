<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\news\NewsCategoryController;
use App\Http\Controllers\Admin\news\NewsController;
use App\Http\Controllers\Admin\menu\MenuController;
use App\Http\Controllers\Admin\brands\BrandsController;
use App\Http\Controllers\Admin\banners\BannersCategoryController;
use App\Http\Controllers\Admin\banners\BannersController;
use App\Http\Controllers\Admin\products\StyleController;
use App\Http\Controllers\Admin\products\ColorController;
use App\Http\Controllers\Admin\products\SizeController;
use App\Http\Controllers\Admin\products\ProductsCategoryController;
use App\Http\Controllers\Admin\products\ProductsController;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\Client\news\NewsController as ClientNewsController;
use App\Http\Controllers\Client\products\ProductsController as ClientProductsController;

// Đăng nhập admin
Route::get('/admin/login', [LoginController::class, 'getLogin'])->name('admin_login');
Route::post('/admin/login', [LoginController::class, 'postLogin'])->name('post_admin_login');
Route::get('/admin', [LoginController::class, 'getLogin'])->name('admin_login');

Route::group(['middleware' => 'checkAdminLogin', 'prefix' => 'admin'], function () {
    Route::get('/home', function () {
        return view('admin.layouts.dashboard');
    })->name('admin_home');

    Route::get('/logout', [LoginController::class, 'logout'])->name('admin_logout');

    // dashboard
    Route::get('/dashboard', function () {
        return view('admin.layouts.dashboard');
    })->name('admin_dashboard');

    // tin tức
    Route::resource('news/category', NewsCategoryController::class)->except(['show']);
    Route::resource('news/list', NewsController::class)->except(['show']);

    // menu
    Route::resource('menu', MenuController::class)->except(['show']);

    // brands
    Route::resource('brands', BrandsController::class)->except(['show']);

    // Banners
    Route::resource('banners/category', BannersCategoryController::class)->except(['show']);
    Route::resource('banners/list', BannersController::class)->except(['show']);

    // products
    Route::resource('product/config/style', StyleController::class)->except(['show']);
    Route::resource('product/config/color', ColorController::class)->except(['show']);
    Route::resource('product/config/size', SizeController::class)->except(['show']);
    Route::resource('product/category', ProductsCategoryController::class)->except(['show']);
    Route::resource('product/product', ProductsController::class)->except(['show']);
});

// ROUTE CLIENT
Route::get('/', [HomeController::class, 'index'])->name('client_home');
Route::get('/home', [HomeController::class, 'index'])->name('client_home_2');

// news home
Route::get('/blogs/home.html', [ClientNewsController::class, 'index'])->name('client_news_list_home');
Route::get('/blogs/home/{page}.html', [ClientNewsController::class, 'indexWithPage'])->name('client_news_list_home_with_page')->where(['page' => '[0-9]+']);

// category news
Route::get('/blogs/category-{id}/{alias}.html', [ClientNewsController::class, 'listByCategory'])->name('client_news_list_by_category')->where(['id' => '[0-9]+']);
Route::get('/blogs/category-{id}/{alias}/{page?}.html', [ClientNewsController::class, 'listByCategoryWithPage'])->name('client_news_list_by_category_with_page')->where(['id' => '[0-9]+', 'page' => '[0-9]+']);
Route::get('/blogs/{id}/{alias}.html', [ClientNewsController::class, 'detail'])->name('client_detail_news')->where(['id' => '[0-9]+']);

// product
Route::get('/product/{id}/{alias}.html', [ClientProductsController::class, 'detail'])->name('client_detail_product')->where(['id' => '[0-9]+']);
