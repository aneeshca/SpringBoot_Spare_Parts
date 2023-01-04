<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list All product</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"></head>

<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>
<body>



  <div class="row">
<div class="col-2"></div>
   <div class="col-10">
<table class="table table-bordered">

<tr>

<th>image</th>
<th>name</th>
<th>category</th>
<th>price</th>
<th>Description</th>
<th>Seller Name</th>
<th>Seller Address</th>
</tr>
<c:forEach var="pr" items="${viewProduct}">
<tr>

<td><img src="data:image/jpg;base64,${pr.image}" style="width: 100px;height: 100px;" ></td>
<td>${pr.pname}</td>
<td>${pr.category}</td>
<td>${pr.price}</td>
<td>${pr.description}</td>
<td>${pr.seller.sname}</td>
<td>${pr.seller.address}</td>
</tr>
</c:forEach>
</table>
</div>
</div>


</body>
</html>