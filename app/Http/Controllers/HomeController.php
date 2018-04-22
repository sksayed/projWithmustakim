<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
    	$products=DB::table('products')
            ->join('categories', 'products.categoryId', '=', 'categories.id')
            ->select('products.*', 'categories.categoryname')
            ->get();
        return view('home.index', ['products' => $products]);  	
    }
}
