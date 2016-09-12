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

Route::get('/env', function () {
    dump(env('DB_CONNECTION'));

    $dbConnection = env('DB_CONNECTION');
    Mail::send('welcome', [
        'address' => 'liu1084@163.com',
        'message' => $dbConnection,
        'title' => 'hello'], function(){});
});
