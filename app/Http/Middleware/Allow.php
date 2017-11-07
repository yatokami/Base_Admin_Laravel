<?php

namespace App\Http\Middleware;

use Closure;

class Allow
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
        $response = $next($request);
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->headers->set('Access-Control-Allow-Headers', 'authorization, Origin, Content-Type, Cookie, Accept, Status Code');
        $response->headers->set('Access-Control-Expose-Headers', 'authorization');
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PATCH, PUT, OPTIONS, DELETE');
        $response->headers->set('Access-Control-Allow-Credentials', 'false');
        return $response;
    }
}
