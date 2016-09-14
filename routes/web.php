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
use App\Article;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/env', function () {
    //abort(404);
    echo json_encode($_ENV);
    Log::debug('show me the environment');
    Log::info('User failed to login.', ['id' => 1]);
    //abort(400);
});

Route::any('foo', function (\Illuminate\Http\Request $request) {
    echo json_encode($request->cookie('XSRF-TOKEN'));
    echo json_encode($_ENV);
    Log::debug('response all request');
});

Route::get('/articles', function(Article $article){
    echo $article->index();
});