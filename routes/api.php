<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/talks', 'ProgramController@indexByAPI')->name('talks');
Route::get('/sponsors', 'SponsorsController@indexByAPI')->name('talks');
Route::get('/talks/{talk}', 'ProgramController@showTalkByAPI')->name('talks.show');
Route::get('/news', 'NewsController@index')->name('news');
Route::get('/news/{news}', 'NewsController@show')->name('news.show');
