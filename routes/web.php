<?php

use Illuminate\Support\Facades\Route;
Use Illuminate\Support\Facades\Auth;
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
Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'admin', 'middleware'=>'user_role_id'], function () {
    Route::get('dashboard', 'HomeController@superAdminHome')->name('admin.home');
    /*Route::get('regular', 'HomeController@localAdminHome')->name('localadmin.home');
    Route::get('operator', 'HomeController@operatorHome')->name('operator.home');*/
    Route::resource('store','StoreController');
    Route::resource('customer','CustomerController');
    Route::resource('transaction','TransactionController');
    Route::resource('disbursement','DisbursementController');
    Route::resource('location','LocationController');
    Route::resource('user','UserController');
    Route::resource('setting','SettingController');

    Route::get('auto','CustomerController@auto');
    Route::get('check','CustomerController@autocomplete');
    Route::get('/search', 'Select2SearchController@index');

    Route::get('check-number/{number}', 'CustomerController@checkNumber');

});


/*Route::group(['prefix'=>'admin', 'middleware'=>['auth','admin']], function () {
    Route::get('dashboard', 'HomeController@localAdminHome')->name('admin.home');
});

Route::group(['prefix'=>'operator', 'middleware'=>['auth','operator']], function () {
    Route::get('dashboard', 'HomeController@localAdminHome')->name('admin.home');
    Route::resource('transaction','TransactionController');

});*/

Route::get('/check-number', 'CustomerController@checkNumber');
Route::get('autocomplete', 'TransactionController@autocomplete')->name('autocomplete');
Route::get('test', 'TestController@test')->name('test');


