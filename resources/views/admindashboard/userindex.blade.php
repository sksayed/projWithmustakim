<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>List of Users</h2>
	<a href="/admindashboard">Back to Home</a>
	<br/><br/>
	<form method="post" action="/admindashboard/userSearch">
		<input type="text" name="searchText">
		<input type="submit" value="Search">
	</form>
	<br/>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>Phone</th>
			<th>address</th>
		</tr>
		@foreach($users as $user)
			<tr>
				<td>{{$user->id}}</td>
				<td>{{$user->username}}</td>
				<td>{{$user->phone}}</td>
				<td>{{$user->address}}</td>
			</tr>
		@endforeach
	</table>
</body>
</html>