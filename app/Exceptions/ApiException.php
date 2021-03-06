<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use App\Http\Traits\ApiResponse;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException;

class ApiException
{
    use ApiResponse;

    /**
     * @var Exception
     */
    public $exception;
    /**
     * @var Request
     */
    public $request;

    /**
     * @var
     */
    protected $report;

    /**
     * ExceptionReport constructor.
     * @param Request $request
     * @param Exception $exception
     */
    function __construct(Request $request, Exception $exception)
    {
        $this->request = $request;
        $this->exception = $exception;
    }

    /**
     * @return bool
     */
    public function shouldReturn(){
        if (! ($this->request->wantsJson() || $this->request->ajax())){
            return false;
        }

        foreach (array_keys($this->doReport) as $report){

            if ($this->exception instanceof $report){

                $this->report = $report;
                return true;
            }
        }

        return false;

    }

    /**
     * @var array
     */
    public $doReport = [
        AuthenticationException::class => ['未授权',401],
        ModelNotFoundException::class => ['该模型未找到',404],
        NotFoundHttpException::class => ['地址错误',404],
        MethodNotAllowedHttpException::class => ['方法不存在',404]
    ];

     /**
     * @param Exception $e
     * @return static
     */
    public static function make(Exception $e){

        return new static(\request(),$e);
    }

    /**
     * @return mixed
     */
    public function report(){

        $message = $this->doReport[$this->report];

        return $this->failed($message[0],$message[1]);

    }
}