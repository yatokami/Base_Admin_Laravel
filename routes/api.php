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

Route::resource('menu', 'Api\MenuController');
Route::post('login', 'Auth\PassportController@login');
Route::post('register', 'Auth\PassportController@register');
 
Route::group(['middleware' => 'auth:api'], function(){
    Route::post('details', 'Auth\PassportController@getDetails');
    Route::post('logout', 'Auth\PassportController@logout');
});