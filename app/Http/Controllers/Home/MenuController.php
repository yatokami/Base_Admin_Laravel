<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = \Auth::guard('admin')->user()->agentid;
        // 调用目录查询存储过程
        $menu = DB::select("call Pro_SelectMenu($id)");
        $arr = [];
        $temp = $menu;
        $Menus = [];
        $menu2 = [];
        $k = 0;
        // 去除查询出来的一级目录重复项 

        for ($i = 0; $i < count($menu); $i++) { 
            if (in_array($menu[$i]->parmenu, $arr) != 1) {
                $menu2[$k] = $menu[$i];
                $k++;
                array_push($arr, $menu[$i]->parmenu);
            }
        }
        // 给目录数组重新赋值
        for ($j = 0; $j < count($menu2); $j++) { 
            $Menus[$j]["title"] = $menu2[$j]->partitle;
            $Menus[$j]["path"] = $menu2[$j]->parpath;
            $Menus[$j]["nullity"] = $menu[$j]->parnullity;
            $Menus[$j]["link"] = $menu2[$j]->parlink;
            $Menus[$j]["menu"] = $menu2[$j]->parmenu;
            $Menus[$j]["icon"] = $menu2[$j]->paricon;
            $Menus[$j]["childs"] = [];
            for ($k = 0; $k < count($temp); $k++) { 
                if ($temp[$k]->parmenu == $menu2[$j]->parmenu) {
                    array_push($Menus[$j]["childs"], $temp[$k]);// 属于一级目录的二级目录追加入一级目录下childs属性下
                }
            }
        }
        return response()->json($Menus);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
