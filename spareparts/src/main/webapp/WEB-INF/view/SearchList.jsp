<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<div class="album py-5 bg-light">
    <div class="container">

        <h4  style="color:black;">Showing Result For:"${search}"</h4>
        <h2 class="text-center ">${error}</h2>
        
        <c:forEach var="pr" items="${product}">
        
        <div class="card mb-4 shadow-sm hoverDiv">
           <a href="proView/${pr.id}">
          <div class="row">
       
          <div class="col-md-3 ">
       
                
             <img  class="card-img-top hover-zoom" src="data:image/jpg;base64,${pr.image}" style="height: 230px;width: 230px;"> 
             |</div>
            
             <div class="col-md-3 ">
         <h6><br><br>
            ${pr.pname}</h6><br>
                ${pr.description}
                
           </div>
           
            <div class="col-md-3 "></div>
        
           
            <div class="col-md-3 ">
         <h6 style="color:black;"><br><br><br><br><br>
        <span>  <i class="fa fa-inr" aria-hidden="true"></i></span> ${pr.price}</h6><br>
               
                
           </div>
           
           
           
           
           </div>
            </a>
            
       
            </div>
         
       
  

 
      </c:forEach>
        </div>
        </div>
   
    

</body>
</html>