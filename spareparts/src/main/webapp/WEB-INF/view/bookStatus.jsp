<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<div class="container">
<br><br>
<div class="d-flex justify-content-center align-items-center"  >

    <div class=""><h2 class="text-primary text-center">Booking Status</h2>
    <div ><img alt="" src="data:image/jpg;base64,${booking.product.image}" style="height: 250px;">
    <div>
   <h3 class="text-primary text-center">Product: ${booking.product.pname}</h3> 
   <h5 class="text-primary text-center">Price: ${booking.product.price}</h5> 
   <h5 class="text-success text-center">Successfully Booked Your Product</h5> 
   <br><a href="../" class="btn btn-warning form-control " >Buy New Product</a>
  <br><br> <a href="../gotobooklist" class="btn btn-primary form-control " >View orders</a>
    </div>
    
    </div>
    
    </div>    
   
    
</div>
</div>
</body>
</html>