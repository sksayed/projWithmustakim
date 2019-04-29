<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>Edit Category</h2>
	<a href="/category">Back to List</a>
	<br/><br/>
	<form method="post" action="/category/{{$category->id}}/update">
		
		<table>
			<tr>
				<td>CATEGORY ID:</td>
				<td>{{$category->id}}</td>
			</tr>
			<tr>
				<td>CATEGORY NAME:</td>
				<td><input type="text" name="catname" value="{{$category->categoryname}}"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>

</body>
</html>