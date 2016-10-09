<?php

namespace App\Http\Middleware;

use Closure;

class Cors
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //After request has been handled, add headers to response.
        $response = $next($request);
        $response->header("Access-Control-Allow-Origin", "*");
        $response->header("Access-Control-Allow-Headers", "X-Requested-With");
        $response->header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS,PATCH,HEAD");
        $response->header("Content-Type", "application/json;charset=utf-8");
        return $response;
    }
}
