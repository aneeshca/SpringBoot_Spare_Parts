<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product View</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>



<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
  

    <form class="d-flex input-group w-auto" action="../searchElement" method="get">
         <input class="form-control mr-sm-2" type="search" placeholder="Search" name="element" value="${search}">
    <button class="btn btn-success" type="submit">Search</button>
    
  </form>
    
    
      <div class="d-flex align-items-center">
          <a href="../cart" class="btn btn-link px-3 me-2">
        Cart <i class="fa fa-shopping-cart" aria-hidden="true"></i>
        </a>

       &nbsp<h4 class="text text-success">welcome </h4>&nbsp<h4 class="text text-primary">${sess.user.fname}</h4>&nbsp<h4 class="text text-primary">${sess.user.lname}</h4>
      
      
        <% 
          HttpSession ses=request.getSession();
          if(ses.getAttribute("sess")!=null){
        	  %>
        	  
        	  <a href="../logout" type="button" class="btn btn-link px-3 me-2">
          logout
        </a>
        <% 	 
          }else{
        	  %>
        	   <a href="../log" type="button" class="btn btn-link px-3 me-2">
          Login
        </a>
        <a href="../reg" class="btn btn-primary me-3">
          Sign up
        </a>
        	
        	  <% 
        	         	  
          }
        
        %>
       
       
      </div>
  </div>
</nav>



<div class="container">
<br><br>
<div class="row " >
<div class="col-6 rounded float-left img-fluid" style="   background-image: ; ">
<img src="data:image/jpg;base64,${proView.image}" style="height: 350px;width: 400px;">

</div>
<div class="col-4" style=" height: 400px;" >

<p><b>${proView.description }</b></p><br>
<h4 class="text text-success">${proView.pname }</h4><br>
 Price<h4> <i class="fa fa-inr" aria-hidden="true"></i>${proView.price }</h4>
<p class="text-danger">Stock Left:${proView.stock}</p>

<c:if test="${proView.stock>0}">

<a href="../AddCart/${proView.id}"class="btn btn-primary">Add to cart</a>&nbsp
<a href="../BookProductnow/${proView.id}"class="btn btn-warning">Place order</a>
</c:if>
<c:if test="${proView.stock<1}">
<button class="btn btn-danger">Out Of Stock</button>
</c:if>

</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>