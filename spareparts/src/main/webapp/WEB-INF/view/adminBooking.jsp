<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>


<h2 class="text-center text-warning">Booking Details</h2>
<div class="row">

<div class="col-2"></div>
<div class="col-10">
<table class="table table-striped table-bordered">
 <thead>
<tr>

<th>product name</th>
<th>customer first name</th>
<th>customer last name</th>
<th>customer address</th>
<th>customer phone number</th>
<th>customer postal code</th>
<th class="text-danger">Booking Status</th>
<th>seller Name</th>
<th>Seller Phone Number</th>

</tr>
</thead>
<tbody id="tbody">
<c:forEach items="${booking}"  var="booking">


<tr>

<td>${booking.product.pname}</td>
<td>${booking.userlog.user.fname}</td>
<td>${booking.userlog.user.lname}</td>
<td>${booking.address.address}</td>
<td>${booking.address.phone}</td>
<td>${booking.address.pincode}</td>
<td class="text-primary">${booking.bookingstatus}</td>
<td>${booking.seller.sname}</td>
<td>${booking.seller.phone}</td>

</tr>

</c:forEach>
</tbody>
</table>
</div>
</div>
<script>

$('#tbody').each(function(){

var rev = $(this).children('tr');
$(this).html(rev.get().reverse());

});

</script>
</body>
</html>