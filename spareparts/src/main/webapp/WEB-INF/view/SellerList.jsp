<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product list</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
   <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
   </head>
<body>

<div class="container">
<h2 class="text-primary text-center">Your All Products</h2>

<table class="table table-bordered" >
<tr>
<th>product id </th>
<th>product image </th>
<th>product name</th>
<th>price </th>
<th>no of Stock </th>
<th>brand</th>
<th>category</th>
<th>description</th>
<th>update</th>
<th>delete</th>

</tr>
<c:forEach var="prod" items="${product}">
  <tbody id="tbody">
<tr>
<td>${prod.id }</td>
<td> <img class="card-img-top hover-zoom" src="data:image/jpg;base64,${prod.image}" style="height: 100px;" ></td> 
<td>${prod.pname }</td>
<td>${prod.price }</td>
<td>${prod.stock }</td>
<td>${prod.brand }</td>
<td>${prod.category }</td>
<td>${prod.description }</td>
<td><a href="../goProUpdate/${prod.id }" class="btn btn-warning">update</a></td>
<td><a href="../deleteProd/${prod.id }" class="btn btn-danger">delete</a></td>
</tr>
</tbody>
</c:forEach>

</table>
</div>
<script>

$('#tbody').each(function(){

var rev = $(this).children('tr');
$(this).html(rev.get().reverse());

});

</script>
</body>
</html>