<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update product</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h2 class="text-center text-success">upload your product</h2>



		<form action="../SelupdateProduct" method="post" enctype="multipart/form-data"
			class="form-group">
			<input name="id" type="text" class="form-control" required="required"
				value="${product.id }" hidden=""><br> 
		   	   <input name="pname" type="text" class="form-control"
				required="required" value="${product.pname } " hidden="">
				<input name="seller" type="text" class="form-control"
				required="required" value="${product.seller.id} " hidden="" >
				
				<input name="category" type="text" class="form-control"
				required="required" value="${product.category} " hidden="">
				
				<input name="brand" type="text" class="form-control"
				required="required" value="${product.brand} " hidden="">
								<br> 
				 <label>product price</label> <input name="price"
				type="text" class="form-control" required="required"
				value="${product.price }"><br> <label>no of
				Stock</label> <input name="stock" type="text" class="form-control"
				required="required" value="${product.stock }"><br> <label>product
				description</label>
			<textarea rows="3" cols="2" name="description" class="form-control"
				required="required">${product.description }</textarea>
			<img class="card-img-top hover-zoom"
				src="data:image/jpg;base64,${product.image}"
				style="height: 100px; width: 100px;"> <label>product
				image</label> <input type="file" class="form-control" name="file" value="${product.image}">

			<button type="submit" class="btn btn-primary">save</button>
		</form>
		<script type="text/javascript"></script>
		<script type="text/javascript"></script>

	</div>
</body>
</html>