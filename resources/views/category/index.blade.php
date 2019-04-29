<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>List of Categories</h2>
	<a href="/admindashboard">Back to Dashboard</a> | 
	<a href="/category/create">Create New</a>
	<br/><br/>
	<form method="post" action="/category/search">
		<input type="text" name="searchText">
		<input type="submit" value="Search">
	</form>
	<br/>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>OPTION</th>
		</tr>
		@foreach($categories as $cat)
			<tr>
				<td>{{$cat->id}}</td>
				<td>{{$cat->categoryname}}</td>
				<td>
					<a href="/category/{{$cat->id}}">Details</a> | 
					<a href="/category/{{$cat->id}}/edit">Edit</a> | 
					<a href="/category/{{$cat->id}}/delete">Delete</a>
				</td>
			</tr>
		@endforeach
	</table>
</body>
</html>