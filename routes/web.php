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
use \App\Http\Middleware\Cors;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

Route::any('/', function () {
    return view('home');
})->name('base');

Route::get('/env', function () {
    phpinfo();
})->middleware('auth');

Route::any('config', function (Request $request, Response $response) {
    Log::debug('response all request, ' . $request->getClientIp());
    return (array_merge($_ENV,
        [
            'xsrfToken' => $request->cookie('XSRF-TOKEN'),
            'user' => $request->user(),
            'token' => $request->session()->token(),
            'fullUrl' => $request->fullUrl(),
            'session' => $request->session()->all()
        ]
    ));

//    $response->header('ContentType', 'text/plain');
//    $response->setStatusCode(200);
//    $response->setContent(['1', 2]);
//    return response()->download('apk/limiterv1.0.apk', 'limiter.apk');

})->middleware('auth');



//声明授权的路由:登录,登出,注册等
Auth::routes();

Route::get('/home', 'HomeController@index');

Route::post('articles/store', 'ArticleController@store')->middleware('auth');
Route::get('articles', 'ArticleController@index')->middleware('cors');
//Route::resource('articles', 'ArticleController');
