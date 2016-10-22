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

Route::group(['middleware' => 'auth'], function () {

});

Route::any('/', function () {
    return view('welcome');
})->middleware('api');

Route::get('/env', function () {
    phpinfo();
//    $fileName = 'storage/' . time() . '.jpg';
//    Image::canvas(200, 300, '#CEE')->greyscale()->text(str_random(100), 50, 0, function($font){
//        $font->size(150);
//        $font->color('#000');
//        $font->align('center');
//        $font->valign('top');
//        $font->angle(45);
//    })->save($fileName);;
//    return response()->download($fileName);
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
Route::resource('articles', 'ArticleController');
