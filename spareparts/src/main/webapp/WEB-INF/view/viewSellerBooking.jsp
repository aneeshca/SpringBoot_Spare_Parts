<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
<title>Customer bookings</title>
</head>
<body>
<div class="container">
<h2 class="text-success text-center ">Product bookings</h2>
<table class="table table-striped">
<tr>
<th>product id</th>
<th>product name</th>
<th>customer first name</th>
<th>customer last name</th>
<th>customer address</th>
<th>customer phone number</th>
<th>customer postal code</th>
<th>Booking Status</th>
</tr>
<tbody id="tbody">
<c:forEach items="${customer}"  var="booking">
      

<tr>
<td>${booking.product.id}</td>
<td>${booking.product.pname}</td>
<td>${booking.userlog.user.fname}</td>
<td>${booking.userlog.user.lname}</td>
<td>${booking.address.address}</td>
<td>${booking.address.phone}</td>
<td>${booking.address.pincode}</td>
<td><a href="../delivered/${booking.id}" class="btn btn-primary">${booking.bookingstatus}</a></td>


</tr>

</c:forEach>
</tbody>
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