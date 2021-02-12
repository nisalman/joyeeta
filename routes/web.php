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
Route::get('toast', 'TestController@toast');
Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'admin', 'middleware'=>'user_role_id'], function () {
    Route::get('dashboard', 'HomeController@superAdminHome')->name('admin.home');
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
    Route::get('transaction/getStores/{id}','TransactionController@getStorebyLocation');

    Route::get('disbursement/make-batch','DisbursementController@getSearchResult');
    Route::post('disbursement/batch-disburse','DisbursementController@batchDisburse')->name('disbursement.batch');
    Route::get('disbursements/batchList','DisbursementController@batchList')->name('disbursement.batchList');
    Route::get('disbursements/batch_detail/{id}','DisbursementController@batchDetail')->name('disbursement.batchDetail');
    Route::post('disbursements/batch_payment','DisbursementController@batchPayment')->name('disbursement.payment');
    Route::get('disbursements/batch_delete/{id}','DisbursementController@batchDelete')->name('batch.delete');
    Route::post('disbursements/confirm','DisbursementController@confirmDisburse')->name('disbursement.confirmation');


    Route::get('getStores/{id}','TransactionController@getStorebyLocation');
    Route::get('disbursement/getStores/{id}','TransactionController@getStorebyLocation');


    Route::get('add-to-log', 'HomeController@myTestAddToLog');
    Route::get('logActivity', 'HomeController@logActivity')->name('logActivity');

    Route::get('print',function () {
        return view('print');
    });



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


