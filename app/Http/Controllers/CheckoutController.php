<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use Illuminate\Support\Facades\DB;
use Session;

class CheckoutController extends Controller
{
    public function index()
    {
    	$username=Session::get('user');

    	$cartproducts=Cart::content();
    	$user=DB::table('users')
    		->where('username',$username)
    		->first();
        return view('checkout.checkout',['cartproducts'=>$cartproducts,'user'=>$user]);
    }

    public function store()
    {
    	return view('checkout.thanks');
    }
}
