<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>cart</title>
</head>
<body>
<div class="container">
<h2 class="text-warning text-center">your cart products</h2>
<div class="card ">
<c:forEach var="cart" items="${cart}">
<div class="row">
<div class="card-body col-1" ></div>
  <div class="card-body col-8" >
    <h5 class="card-title">${cart.pro.pname }</h5>
    <img alt="" src="data:image/jpg;base64,${cart.pro.image}" style="height: 100px;width: 100px;">&nbsp ${cart.pro.description}<br><br>
    <a href="../proView/${cart.pro.id}" class="btn btn-primary btn-lg" style="background-color: orange;">Place order</a>&nbsp
    <a href="../removeCart/${cart.cid}" class="btn btn-danger btn-lg">Remove</a>
 </div>
 <div class="col">
 <br><br> <br><br>
Price: <i class="fa fa-inr" aria-hidden="true"></i>${cart.pro.price }
 
 
  </div>
  </div>
  </c:forEach>
</div>
</div>
</body>
</html>