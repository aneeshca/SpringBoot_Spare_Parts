<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<header>
 <div>
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
  
    <form class="d-flex input-group w-auto" action="searchElement" method="get">
         <input class="form-control mr-sm-2" type="search" placeholder="Search" name="element" value="${search}">
    <button class="btn btn-success" type="submit">Search</button>
    
  </form>
     
    
    
    
      <div class="d-flex align-items-center">
       &nbsp<h4 ><a href="/" class="text-white">WrenchGear <i class="fa fa-wrench text-danger" aria-hidden="true"></i></a></h4>&nbsp<h4 class="text text-primary">${sess.user.fname}</h4>&nbsp<h4 class="text text-primary">${sess.user.lname}</h4>
      
      
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
        	    <a href="gotoSeller" class="btn btn-link px-3 me-2 text-warning">
         Become A Seller
        </a>
        
          	    <a href="../cart" class="btn btn-link px-3 me-2">
        Cart <i class="fa fa-shopping-cart" aria-hidden="true"></i>
        </a>
       
        
        	   <a href="log" type="button" class="btn btn-link px-3 me-2">
          Login
        </a>
         <a href="reg" class="btn btn-primary me-3">
          Sign up
        </a>
       
        	 
        	  <% 
        	         	  
          }
        
        %>

      </div>
  </div>
</nav>
</div>
</header>
</body>
</html>