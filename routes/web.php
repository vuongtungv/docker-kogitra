<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//Route::group(['/admin', 'prefix'=> 'admin'],function (){
//
//    Route::group(['prefix' => 'login'], function() {
//        Route::get('/', 'Admin\LoginController@getLogin');
//        Route::post('/', 'Admin\LoginController@postLogin');
//    });
//
//
//    Route::group(['middleware' => 'auth'], function (){
//        Route::get('/home', function (){
//            return view('admin.layouts.index');
//        });
//    });
//
//
//});

Route::post('/admin/login', 'Admin\LoginController@postLogin')->name('post_admin_login');
Route::get('/admin/login', [ 'uses' => 'Admin\LoginController@getLogin'])->name('admin_login');

Route::group(['middleware' => 'checkAdminLogin', '/admin', 'prefix'=> 'admin'],function () {
    Route::group(['middleware' => 'checkAdminLogin', 'prefix' => '/', 'namespace' => 'admin'], function () {
        Route::get('/home', function () {
            return view('admin.layouts.dashboard');
        })->name('admin_home');
    });
    Route::get('/logout', ['uses' => 'Admin\LoginController@logout'])->name('admin_logout');



    // dashboard
    Route::get('/dashboard', function (){
        return view('admin.layouts.dashboard');
    })->name('admin_dashboard');

    // sản phẩm
    Route::get('/product/category', [ 'uses' => 'Admin\products\ProductsCategoryController@index'])->name('admin_products_category');
    Route::get('/product/list', [ 'uses' => 'Admin\products\ProductsController@index'])->name('admin_products');


    // tin tức
    Route::get('/news/category', [ 'uses' => 'Admin\news\NewsCategoryController@index'])->name('admin_news_category');
    Route::get('/news/category/add', [ 'uses' => 'Admin\news\NewsCategoryController@view_add'])->name('admin_add_news_category');
    Route::post('/news/category/add', [ 'uses' => 'Admin\news\NewsCategoryController@add'])->name('post_admin_add_news_category');
    Route::get('/news/category/edit/{id}', [ 'uses' => 'Admin\news\NewsCategoryController@view_edit'])->name('admin_edit_news_category');
    Route::post('/news/category/edit/{id}', [ 'uses' => 'Admin\news\NewsCategoryController@update'])->name('post_admin_edit_news_category');

    Route::get('/news/list', [ 'uses' => 'Admin\news\NewsController@index'])->name('admin_news');
    Route::get('/news/list/add', [ 'uses' => 'Admin\news\NewsController@view_add'])->name('admin_add_news');
    Route::post('/news/list/add', [ 'uses' => 'Admin\news\NewsController@add'])->name('post_admin_add_news');
    Route::get('/news/list/edit/{id}', [ 'uses' => 'Admin\news\NewsController@view_edit'])->name('admin_edit_news');
    Route::post('/news/list/edit/{id}', [ 'uses' => 'Admin\news\NewsController@update'])->name('post_admin_edit_news');



    // menu
    Route::get('/menu', [ 'uses' => 'Admin\menu\MenuController@index'])->name('admin_menu');
    Route::get('/menu/add', [ 'uses' => 'Admin\menu\MenuController@view_add'])->name('admin_add_menu');
    Route::post('/menu/add', [ 'uses' => 'Admin\menu\MenuController@add'])->name('post_admin_add_menu');
    Route::get('/menu/edit/{id}', [ 'uses' => 'Admin\menu\MenuController@view_edit'])->name('admin_edit_menu');
    Route::post('/menu/edit/{id}', [ 'uses' => 'Admin\menu\MenuController@update'])->name('post_admin_edit_menu');



    // Banners
    Route::get('/banners/category', [ 'uses' => 'Admin\banners\BannersCategoryController@index'])->name('admin_banners_category');
    Route::get('/banners/category/add', [ 'uses' => 'Admin\banners\BannersCategoryController@view_add'])->name('admin_add_banners_category');
    Route::post('/banners/category/add', [ 'uses' => 'Admin\banners\BannersCategoryController@add'])->name('post_admin_add_banners_category');
    Route::get('/banners/category/edit/{id}', [ 'uses' => 'Admin\banners\BannersCategoryController@view_edit'])->name('admin_edit_banners_category');
    Route::post('/banners/category/edit/{id}', [ 'uses' => 'Admin\banners\BannersCategoryController@update'])->name('post_admin_edit_banners_category');

    Route::get('/banners/list', [ 'uses' => 'Admin\banners\BannersController@index'])->name('admin_banners');
    Route::get('/banners/list/add', [ 'uses' => 'Admin\banners\BannersController@view_add'])->name('admin_add_banners');
    Route::post('/banners/list/add', [ 'uses' => 'Admin\banners\BannersController@add'])->name('post_admin_add_banners');
    Route::get('/banners/list/edit/{id}', [ 'uses' => 'Admin\banners\BannersController@view_edit'])->name('admin_edit_banners');
    Route::post('/banners/list/edit/{id}', [ 'uses' => 'Admin\banners\BannersController@update'])->name('post_admin_edit_banners');


});



// ROUTE CLIENT

Route::get('/index.html', ['uses' => 'Client\HomeController@index'])->name('client_home');


// news home
Route::get('/blogs/home.html', [ 'uses' => 'Client\news\NewsController@index'])->name('client_news_list_home');
Route::get('/blogs/home/{page}.html', [ 'uses' => 'Client\news\NewsController@indexWithPage'])->name('client_news_list_home_with_page')->where(['page' => '[0-9]+']);

// category news
Route::get('/blogs/category-{id}/{alias}.html', [ 'uses' => 'Client\news\NewsController@listByCategory'])->name('client_news_list_by_category')->where(['id' => '[0-9]+']);
Route::get('/blogs/category-{id}/{alias}/{page?}.html', [ 'uses' => 'Client\news\NewsController@listByCategoryWithPage'])->name('client_news_list_by_category_with_page')->where(['id' => '[0-9]+', 'page'=> '[0-9]+']);


Route::get('/blogs/{id}/{alias}.html', [ 'uses' => 'Client\news\NewsController@detail'])->name('client_detail_news')->where(['id' => '[0-9]+']);
