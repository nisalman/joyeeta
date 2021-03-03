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
    Route::resource('card','CardController');
    Route::resource('setting','SettingController');
    Route::resource('report','ReportController');

    Route::get('auto','CustomerController@auto');
    Route::get('check','CustomerController@autocomplete');
    Route::get('/search', 'Select2SearchController@index');

    Route::get('store/deactivate/{id}','StoreController@deactivate')->name('store.deactivate');
    Route::get('store/active/{id}','StoreController@active')->name('store.active');



    Route::get('transaction/check', 'TransactionController@check');
    Route::post('setting/updateCard', 'CardController@updateData')->name('card.updateData');

    Route::get('check-number/{number}', 'CustomerController@checkNumber');
    Route::get('transaction/getStores/{id}','TransactionController@getStorebyLocation');
    Route::get('transaction/cancelled_list','TransactionController@viewCancelledlist')->name('transaction.cancelledlist');
    Route::post('transaction/search','TransactionController@search')->name('transaction.search');
    Route::get('transaction/show/{id}','TransactionController@show')->name('transaction.show');
    Route::get('transaction/cancel/{id}','TransactionController@cancel')->name('transaction.cancel');
    Route::get('transaction/active/{id}','TransactionController@active')->name('transaction.active');

    Route::get('disbursement/make-batch','DisbursementController@getSearchResult');
    Route::post('disbursement/batch-disburse','DisbursementController@batchDisburse')->name('disbursement.batch');
    Route::get('disbursements/batchList','DisbursementController@batchList')->name('disbursement.batchList');
    Route::get('disbursements/batch_detail/{id}','DisbursementController@batchDetail')->name('disbursement.batchDetail');
    Route::post('disbursements/batch_payment','DisbursementController@batchPayment')->name('disbursement.payment');
    Route::get('disbursements/batch_delete/{id}','DisbursementController@batchDelete')->name('batch.delete');
    Route::post('disbursements/confirm','DisbursementController@confirmDisburse')->name('disbursement.confirmation');


    Route::get('getStores/{id}','TransactionController@getStorebyLocation');
    Route::get('disbursement/getStores/{id}','TransactionController@getStorebyLocation');



    Route::get('user/deactivated/{id}','UserController@deactivated')->name('user.deactivated');
    Route::get('user/reactivated/{id}','UserController@reactivated')->name('user.reactivated');


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


