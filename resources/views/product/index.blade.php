<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>List of Products</h2>
	<a href="/home">Back to Home</a> | 
	<a href="/product/create">Create New</a>
	<br/><br/>
	<form method="post" action="/product/search">
		<input type="text" name="searchText">
		<input type="submit" value="Search">
	</form>
	<br/>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>QUANTITY</th>
			<th>CATEGORY</th>
			<th>OPTION</th>
		</tr>
		@foreach($products as $product)
			<tr>
				<td>{{$product->productId}}</td>
				<td>{{$product->productName}}</td>
				<td>{{$product->price}}</td>
				<td>{{$product->quantity}}</td>
				<td>{{$product->category->categoryName}}</td>
				<td>
					<a href="/product/{{$product->productId}}">Details</a> | 
					<a href="/product/{{$product->productId}}/edit">Edit</a> | 
					<a href="/product/{{$product->productId}}/delete">Delete</a>
				</td>
			</tr>
		@endforeach
	</table>
</body>
</html>