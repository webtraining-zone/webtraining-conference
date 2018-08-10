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

Route::get('/', 'WelcomeController@index')->name('welcome');
Route::get('/users', 'WelcomeController@getUsersWithRawQuery')->name('getUsersWithRawQuery');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/program', 'ProgramController@index')->name('program');

Route::get('/program/{talk}', 'ProgramController@showTalk')->name('showTalk');

Route::get('/sponsors', 'SponsorsController@index')->name('sponsors');
