<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>List of Buy History</h2>
	<a href="/user/userProfile">Back to User</a> | 
	<br/><br/>
	<br/>
		<table border="1">
		<tr>
			<th>Order ID</th>
			<th>Option</th>
		</tr>
		@foreach($orders as $order)
			<tr>
				<td>{{$order->orderId}}</td>
				<td><a href="/user/{{$order->orderId}}/userOrderDetails">Order Details</a></td>
			</tr>
		@endforeach
	</table>

</body>
</html>