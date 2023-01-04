<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Booking History</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
<h3>Your booking history</h3>
<table class="table table-striped table-bordered" >
<tr>
<th>image</th>
<th>product name</th>
<th>description</th>
<th>booking Status</th>
<th>cancel booking</th>
<th>goto</th>

</tr>
<tbody id="tbody">
<c:forEach var="book" items="${bookinglist}">

<tr>
<td><img src="data:image/jpg;base64,${book.product.image}" style="height: 100px;width: 100px;"></td>
<td>${book.product.pname}</td>
<td>${book.product.description}</td>
<td>${book.bookingstatus}</td>
<td>




<c:set var="status" value="${ book.bookingstatus}"/>
<c:choose> 
  <c:when test="${status == 'on delivery process'}">
 <a href="cancelOrder/${book.id}" class="btn btn-warning">cancel order</a>
    
  </c:when>
  <c:otherwise>
 
  </c:otherwise>
</c:choose>

</td>
<td>

<a href="proView/${book.product.id}" class="btn btn-primary">view Product</a></td>


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