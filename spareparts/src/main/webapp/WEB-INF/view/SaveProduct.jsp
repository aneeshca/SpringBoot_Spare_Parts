<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>

<div class="container">
<h2 class="text-center text-warning">upload your product</h2>
<form action="saveProduct" method="post" enctype="multipart/form-data" class="form-group" >
<label>product name</label>
<input name="pname" placeholder="enter product name" type="text" class="form-control" required="required"><br>
<label>product category</label>
<select name="category" class="form-control">
<option value="spare parts">spare parts</option>
<option value="accessory">accessory</option>
</select><br>


<label>product brand</label>
<select name="brand" class="form-control">
<option value="yamaha">yamaha</option>
<option value="honda">honda</option>
<option value="tvs">tvs</option>
<option value="bajaj">bajaj</option>
<option value="ktm">ktm</option>
<option value="suzuki">suzuki</option>

</select><br>
<label>product price</label>
<input name="price" placeholder="enter product price" type="text" class="form-control" required="required"><br>
<label>product description</label>
<textarea rows="3" cols="2" name="description" class="form-control" required="required"></textarea><label>Stock count</label>
<input name="stock" placeholder="enter stock count" type="text" class="form-control" required="required"><br>
<label>product image</label>
<input type="file" class="form-control" name="file" placeholder="upload image" class="form=control" >
<input name="id"  type="text" value="${session.id}" class="form-control" hidden="">
<button type="submit" class="btn btn-primary">save</button>
</form>
<script type="text/javascript"></script>
<script type="text/javascript"></script>

</div>
</body>
</html>