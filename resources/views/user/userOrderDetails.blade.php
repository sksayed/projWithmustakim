<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>Order Details</h2>
	<a href="/user/userProfile">Back to Buy History</a> | 
	<br/><br/>
	<br/>
		<table border="1">
		<tr>
			<th>ORDER ID</th>
			<th>PRODUCT NAME</th>
			<th>QUANTITY</th>
			<th>PRICE</th>
			<th>PHONE NUMBER</th>
			<th>ADDRESS</th>
			<th>DELIVERY STATUS</th>
			<th>ORDER DATE</th>
		</tr>
		<?php 
		      $totalPrice = 0;
		      $totalQuantity= 0;           
		 ?>
		@foreach($soldProducts as $soldp)
			<tr>
				<td>{{$soldp->orderId}}</td>
				<td>{{$soldp->productname}}</td>
				<td>{{$soldp->quantity}}</td>
				<td>{{$soldp->price}}</td>
				<td>{{$soldp->phonenumber}}</td>
				<td>{{$soldp->address}}</td>
				<td>{{$soldp->delivery}}</td>
				<td>{{$soldp->Orderdate}}</td>
				<?php 
		      		$totalPrice+=$soldp->price; 
		      		$totalQuantity+=$soldp->quantity;          
		 		?>
			</tr>
		@endforeach
		<tr>
			<th></th>
			<th></th>
			<th>Total: {{$totalQuantity}}</th>
			<th>Total: {{$totalPrice}}</th>
			
		</tr>
	</table>

</body>
</html>