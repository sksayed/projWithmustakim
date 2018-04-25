<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Product;
use App\Http\Requests\CreateProductRequest;

class ProductController extends Controller
{
    public function index()
    {
    	$products = Product::all();
        //$products->load('category');
        // $products = DB::table('products')
        //  ->join('categories', 'products.categoryId', '=', 'categories.categoryId')
        //  ->get();

        //dd($products);
        return view('product.index', ['products' => $products]);
    }
    public function show($id)
    {
    	// $product = Product::find($id);
        $product=DB::table('products')
            ->join('categories', 'products.categoryId', '=', 'categories.id')
            ->select('products.*', 'categories.categoryname')
            ->where('products.id',$id)
            ->first();

    	//dd($product->category->categoryName);

        return view('product.details', ['p' => $product]);
    	// return [$product];
    }

    public function create()
    {
    	//Category::all()
    	$categories = DB::table('categories')
                    ->get();

        return view('product.create', ['categories' => $categories]);
    	
    }

    public function edit($id)
    {
    	$product = DB::table('products')->find($id);
    	return view('product.edit', ['product' => $product]);

    }
    public function statusUpdate($id)
    {
        $params = [
            'delivery'=>'yes'
        ];
        DB::table('soldproduct')
            ->where('id', $id)
            ->update($params);

        return redirect('/product/soldPendings');

    }
    public function delete($id)
    {
    	$product = Product::find($id);
    	return view('product.delete', ['product' => $product]);
    }

    public function store(CreateProductRequest $request)
    {
    	$params=[
            'productname'=>$request->productname,
            'price'=>$request->price,
            'quantity'=>$request->quantity,
            'categoryId'=>$request->cat,
            'details'=>$request->details
        ];

        $product=DB::table('products')
            ->insert($params);

    	 if($product)
                 {
                     return redirect('/admindashboard');
                 }
                 else
                 {
                     $request->session()->flash('message', 'Invalid input');
                     // $request->session()->forget('message');
                     // $request->session()->flush();
                     return redirect()->back();
                 }
    }

    public function update(Request $request, $id)
    {
    	/*$p = Product::find($id);
        $p->productName = $request->pname;
        $p->price = $request->price;
        $p->quantity = $request->quantity;
        $p->categoryId = $request->cat;
        $p->save();
        return redirect('/product');*/

        $params = [
            'productname'=>$request->pname,
            'price'=>$request->price,
            'quantity'=>$request->quantity,
            'categoryId'=>$request->cat,
            'details'=>$request->details
        ];
        DB::table('products')
            ->where('id', $id)
            ->update($params);

        return redirect('/admindashboard');
    }

    public function destroy($id)
    {
    	/*$p = Product::find($id);
    	$p->delete();*/

        //DB::table('products')->truncate($id);

    	return redirect('/admindashboard');
    }

    public function search(Request $request)
    {
    	$products = Product::where('productname', 'LIKE', "%$request->searchText%")
			->get();
		return view('product.index', ['products' => $products]);
    }
       public function productSold()
    {
        //$products = Product::all();
        
        $soldproduct = DB::table('soldproduct')
         ->where('delivery','yes')
         ->get();

        //dd($products);
        return view('product.productSold', ['soldproduct' => $soldproduct]);
    }
     public function soldPendings()
    {
        //$products = Product::all();
        
        $soldproduct = DB::table('soldproduct')
         ->where('delivery','no')
         ->get();

        //dd($products);
        return view('product.soldPendings', ['soldproduct' => $soldproduct]);
    }
    public function searchSoldproduct(Request $request)
    {
            $soldproduct = DB::table('soldproduct')
                ->where('productname', 'LIKE', "%$request->searchText%")
                ->get();
            
        return view('product.productSold', ['soldproduct' => $soldproduct]);
    }
    public function searchByCatagorySoldproduct(Request $request)
    {
            $soldproduct = DB::table('soldproduct')
                ->where('category', 'LIKE', "$request->cat")
                ->get();
            
        return view('product.productSold', ['soldproduct' => $soldproduct]);
    }
}
