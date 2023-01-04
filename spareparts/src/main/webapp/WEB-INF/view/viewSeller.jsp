<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>
</head>
<body style="background-color:gray;">

<div class="container-fluid">



  <div class="row content">
 



<div class="row">
<div class="col"></div>
<div class="col"></div>
<div class="col"></div>
<div class="col">
<h2 class="text-warning">Manage Seller Account</h2>
<table class="table table-bordered">
<tr style="background-color:olive; ;">
<th> name</th>
<th>phone number </th>
<th>email</th>
<th>address</th>
<th>firm name</th>
<th>place</th>
<th>status</th>
<th>confirm seller</th>
<th>remove seller</th>
</tr>
<c:forEach var="slr" items="${sell}">
<tbody id="tbody">
<tr>
<td>${slr.sname}</td>
<td>${slr.phone}</td>
<td>${slr.email}</td>
<td>${slr.address}</td>
<td>${slr.cpname}</td>
<td>${slr.place}</td>
<td>${slr.status}</td>
<td><a href="Sellerstatus/${slr.id}" class="btn btn-success">${slr.status}</a> </td>
<td><a href="deleteSeller/${slr.id}" class="btn btn-danger">remove</a></td>
</tr>
</tbody>
</c:forEach>
</table>
</div>
</div>
</div>
</div>
</body>
</html>