<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >

<title>Payments</title>
</head>

<body>
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>

<div class="row">
<div class="col-3"></div>

<div class="col">
<table class="table table bordered">
<tr>
<th>Buyer name</th>
<th>product</th>
<th>Qnty</th>
<th>payment</th>
</tr>
<c:forEach items="${payment}" var="payment">
<tr>
<td>${payment.user.user.fname}</td>
<td>${payment.productname }</td>
<td>${payment.quantity }</td>
<td>${payment.payment }</td>
<tr>
</c:forEach>
</table>
</div>
</div>

</body>
</html>