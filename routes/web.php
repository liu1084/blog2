<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/env', function(\Illuminate\Http\Request $request){
    return $request->cookie('XSRF-TOKEN');
});

Route::any('foo', function (\Illuminate\Http\Request $request) {
    echo json_encode($request->cookie('XSRF-TOKEN'));
    echo json_encode($_ENV);
    Log::debug('response all request, '. $request->getClientIp());
});



Route::group(['prefix' => 'articles'], function(){
    Route::get('/', 'ArticleController@index')->name('getAllArticles');
    Route::get('/{id?}', 'ArticleController@read')->name('getArticleById');
    Route::post('/new', 'ArticleController@createOne')->name('createArticle');
});