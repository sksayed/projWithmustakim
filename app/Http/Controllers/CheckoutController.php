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

    public function store(Request $request)
    {
    	$userorder=[
    		'customerId'=>$request->userid,
    	];
    	$orderid=DB::table('orders')
    		->insertGetId($userorder);

    	$cartproducts=CART::content();
    	foreach($cartproducts as $cp)
    	{
    		$params=[
    			'productid'=>$cp->id,
    			'productname'=>$cp->name,
    			'orderId'=>$orderid,
    			'username'=>$request->name,
    			'quantity'=>$cp->qty,
    			'price'=>$cp->subtotal,
    			'phonenumber'=>$request->phone_number,
    			'address'=>$request->address,
    			'zipcode'=>$request->zip_code
    		];
    		DB::table('soldproduct')
    			->insert($params);
    		Cart::remove($cp->rowId);
    	}

    	return view('checkout.thanks');
    	// return $a;
    }
}
