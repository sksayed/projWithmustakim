<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h2>Delete Category</h2>
	<a href="/category">Back to List</a>
	<br/><br/>
	<table>
		<tr>
			<td>CATEGORY ID:</td>
			<td>{{$category->id}}</td>
		</tr>
		<tr>
			<td>CATEGORY NAME:</td>
			<td>{{$category->categoryname}}</td>
		</tr>
	</table>

	<h3>Are you sure?</h3>
	<form method="post" action="/category/{{$category->id}}/delete">
		
		<!--
		<input type="hidden" name="catId" value="{{$category->id}}">
		-->
		<input type="submit" value="Confirm">
	</form>

</body>
</html>