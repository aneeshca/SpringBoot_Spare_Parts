<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>

 <div>
<nav class="navbar navbar-dark bg-light">
  <div class="container-fluid">
  
  
     <h4 class="text text-success">welcome </h4>
    
    
    
      <div class="d-flex align-items-right">
       &nbsp<h4 class="text text-primary">${sess.user.fname}</h4>&nbsp<h4 class="text text-primary">${sess.user.lname}</h4>
      
    <%
    HttpSession sess=request.getSession();
    if(sess.getAttribute("sess")!=null){
    	
    
    %>
        	  
        	  <a href="logout" type="button" class="btn btn-warning">
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
</body>
</html>