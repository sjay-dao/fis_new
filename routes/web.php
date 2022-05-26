<?php

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

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/','HomeController@index')->name('home');
Route::get('/adoptor/{id}','HomeController@adoptor')->name('adoptor');

Route::get('/live_search/action', 'LiveSearch@action')->name('live_search.action');
Route::post('mail/inquery', 'SendMailController@sendMail')->name('mail.inquery');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin']], function()
{
    Route::get('/dashboard','DashboardController@index')->name('dashboard');
    Route::get('settings','SettingsController@index')->name('settings');
    Route::put('profile-update','SettingsController@profileUpdate')->name('profile.update');
    Route::get('change-password','SettingsController@password')->name('changePassword');
    Route::put('profile-password','SettingsController@changePassword')->name('profile.password');
    Route::resource('region', 'RegionController',['except' => ['create','show','edit']]);

    Route::resource('equipment','EquipmentController');
    Route::get('equipment-report','EquipmentController@report')->name('equipment.report');
    Route::resource('product','ProductController');
    Route::get('product-report','ProductController@report')->name('product.report');
    Route::resource('adoptor','AdoptorController');
    Route::post('adoptor-search','AdoptorController@adoptorSearch')->name('adoptor-search');
    Route::get('adoptor-report','AdoptorController@report')->name('adoptor.report');
    Route::get('adoptor-contact-report','AdoptorController@contactReport')->name('adoptor-contact-report');
    Route::get('contact-person','AdoptorController@contact')->name('contact-person');
    Route::resource('user','UserController');
    Route::resource('audit','AuditController',['only' => ['index']]);
    Route::post('history-search','AuditController@search')->name('history-search');
    Route::resource('inquiry','InquiryController',['only' => ['index','destroy','show']]);
    // Route::put('user/{user}','UserController@password')->name('user.password');
    Route::resource('FAQ','FaqController');

    Route::get('chart', 'ChartController@index')->name('chart.index');

    Route::resource('forum','ForumController');
    Route::get('/pending','ForumController@pending')->name('pending');
    Route::get('/approvePost/{id}','ForumController@approvePost')->name('approvePost');
    Route::get('/forum-posts','ForumController@myPost')->name('myPost');
    Route::get('/user-posts/{id}','ForumController@userPost')->name('userPost');
    Route::resource('comment','CommentController',['except' => ['edit','show','index','create']]);
    Route::resource('message','MessageController');
    Route::post('message-reply', 'MessageController@reply')->name('message-reply');
    Route::resource('record', 'RecordController');

});
Route::group(['as'=>'user.','prefix'=>'user','namespace'=>'User','middleware'=>['auth','user']], function()
{
    Route::get('/dashboard','DashboardController@index')->name('dashboard');    

    Route::get('settings','SettingsController@index')->name('settings');
    Route::put('profile-update','SettingsController@profileUpdate')->name('profile.update');
    Route::get('change-password','SettingsController@password')->name('changePassword');
    Route::put('profile-password','SettingsController@changePassword')->name('profile.password');
    Route::get('adoptor','SettingsController@adoptor')->name('adoptor-settings');
    Route::put('adoptor/{id}','SettingsController@adoptorUpdate')->name('adoptor-update');

    Route::get('/home','DashboardController@home')->name('home');    
    Route::get('/technology','TechnologyController@index')->name('technology.index');
    Route::post('update-technology/{id}','TechnologyController@updateStat')->name('update-technology');

    Route::resource('equipment','EquipmentController',['only' => ['index']]);
    Route::post('update-equipment/{id}','EquipmentController@updateStat')->name('update-equipment');

    Route::get('/rawMaterial','RawMaterialController@index')->name('rawMaterial.index');
    Route::post('update-rawMaterial/{id}','RawMaterialController@updateStat')->name('update-rawMaterial');
    Route::resource('sale','SaleController');
    Route::get('sale-report','SaleController@report')->name('sale.report');
    Route::post('sale-search','SaleController@search')->name('sale.search');
    Route::resource('production','ProductionController');
    Route::get('production-report','ProductionController@report')->name('production.report');
    Route::post('production-search','ProductionController@search')->name('production.search');
    Route::get('/rawMat','ProductionController@production')->name('production-rawMat');
    Route::get('/get-post-chart-data', 'ChartController@getMonthlyPostData');
    Route::get('/salesData', 'DashboardController@salesData');

    //Forum route
    Route::resource('forum','ForumController');
    Route::get('/forum-posts','ForumController@myPost')->name('myPost');
    Route::get('/user-posts/{id}','ForumController@userPost')->name('userPost');
    Route::resource('comment','CommentController',['except' => ['edit','show','index','create']]);
    Route::resource('employee', 'EmployeeController',['except' => ['show']]);
    Route::get('employee-report','EmployeeController@report')->name('employee.report');
    Route::resource('production_rawmats','ProductionRawMaterialController');

    //start here again
    Route::resource('client','ClientController',['except' => ['create','show','edit']]);
    Route::resource('supplier','SupplierCOntroller',['except' => ['create','show','edit']]);
   
    Route::get('rawMaterial-report','RawMaterialController@report')->name('rawMaterial.report');
    Route::resource('rawMaterial','RawMaterialController');
    Route::get('rawMaterials-list','RawMaterialController@list')->name('rawMaterial.list');
    Route::post('insert','RawMaterialController@insert')->name('rawMaterial.insert');
    Route::put('updateRawMat/{id}','RawMaterialController@updateRawMat')->name('rawMaterial.updateRawMat');
    //Production
    Route::resource('product', 'AdoptorProductController');
    Route::resource('RawMaterialUsed','RawMaterialUsedController');

    Route::resource('reject','RejectController');
    Route::resource('productSample','ProductSampleController');
    Route::resource('message','MessageController');
    Route::post('message-reply', 'MessageController@reply')->name('message-reply');

    Route::get('sample','SaleController@sample');
    Route::post('sample/fetch_data','SaleController@fetch_data');

    Route::resource('otherEquipment', 'OtherEquipmentController');

});


