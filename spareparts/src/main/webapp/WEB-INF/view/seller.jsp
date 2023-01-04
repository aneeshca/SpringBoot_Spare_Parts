<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>seller home</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

 <div>
<nav class="navbar navbar-dark bg-light">
  <div class="container-fluid">
  
  
     <h4 class="text text-success"><a href="/" class="text-warning">WrenchGear <i class="fa fa-wrench text-danger" aria-hidden="true"></i></a></h4>
    
    
    
      <div class="d-flex align-items-right">
       &nbsp<h4 class="text text-primary">${sess.user.fname}</h4>&nbsp<h4 class="text text-primary">${sess.user.lname}</h4>
      
    <%
    HttpSession sess=request.getSession();
    if(sess.getAttribute("sess")!=null){
    	
    
    %>
        	  
        	  <a href="lo" type="button" class="btn btn-warning">
          logout
        </a>
        <%}else{ %>
        
          &nbsp <a href="sellReg" class="btn btn-warning">Start Selling</a>   &nbsp &nbsp
         <a href="sellog" class="btn btn-primary">  Login  </a>
         
     
       <%} %>
        	 
  
       
       
      </div>
  </div>
</nav>
</div>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://img1a.flixcart.com/fk-sp-static/images/Welcome_potal_banner_Desktop_v2_july_2022.svg" alt="First slide">
    </div>
   
  </div>
</div>
<br><br>
<div class="container row">
<div class="col"></div>
<div class="col"></div>
<div class="card col-2" style="width: 18rem;"><br>
  <img class="card-img-top" src="https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Anand k </h5>
    <p class="card-text">top number one seller</p>
    
  </div>
</div>
<div class="col"></div>
<div class="card col-2" style="width: 18rem;"><br>
  <img class="card-img-top" src="https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-600w-1768126784.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Raju Lunawath</h5>
    <p class="card-text"> Starting with 1,SpareStore helped me expand to 6 categories with 5x growth year on year!"</p>
    
  </div>
</div>
<div class="col"></div>
<div class="card col-2" style="width: 18rem;"><br>
  <img class="card-img-top" src="https://www.shutterstock.com/image-photo/portrait-happy-mature-businessman-wearing-600w-1288136518.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Shubhash Chopra, DivisaStore</h5>
    <p class="card-text">With Flipkart, we went from Rs.20,000 to Rs.2 Cr in sales per annum!"</p>
   
  </div>
</div>

</div>
<br><br>
<div class="container-fluid">
<img alt="" src="https://img1a.flixcart.com/fk-sp-static/images/grow_faster_new.png" style="width: 100%">
</div>
<div class="container-fluid">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>