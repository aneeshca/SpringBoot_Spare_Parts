<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<style type="text/css">
.hoverDiv{
background: #fff;

}
.hoverDiv:hover {
	transform: scale(1.03);
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div>
<div id="demo" class="carousel slide" data-ride="carousel" >
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://wallpapercave.com/wp/wp7280265.jpg" alt="Los Angeles" width="100%" height="500">
      <div class="carousel-caption">
        <h3>Repair your bike</h3>
        <p>We had original and compact product </p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://wallpapercave.com/wp/wp1910271.jpg" alt="Chicago" width="100%" height="500">
      <div class="carousel-caption">
        <h3>ORGINAL</h3>
        <p>Spare Parts</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://wallpapercave.com/wp/wp7280323.jpg" alt="New York" width="100%" height="500">
      <div class="carousel-caption">
        <h3>POWER OF YAMAHA</h3>
        <p>Buy Good Products </p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>





<br><br>
<div class="container-fluid">

<div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
      
      
      
      
      
        <c:forEach var="pr" items="${viewPro}" end="11" >
      
   <div class="col-md-3">
          <div class="card mb-4 shadow-sm hoverDiv">
                <a href="proView/${pr.id}">
             <img alt="" class="card-img-top hover-zoom" src="data:image/jpg;base64,${pr.image}" width="287px" height="260px"></a>
            <div class="card-body" style="height: 200px">
              <h5 class="card-title">${pr.pname}</h5>
                <p class="card-text">${pr.description}</p>
                  
              <div class="d-flex justify-content-between align-items-center">
                
               
              </div>
            </div>
          </div>
        </div>
  

 
      </c:forEach>
        </div>
        </div>
   </div>
   
   <h4>Yamaha</h4>
      <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
  <c:forEach var="pr" items="${viewPro}">
              <c:set var="brand" value="${pr.brand}"/>
  <c:choose> 
 <c:when test="${brand == 'yamaha'}">

      
   <div class="col-md-3">
          <div class="card mb-4 shadow-sm hoverDiv">
                <a href="proView/${pr.id}">
             <img alt="" class="card-img-top hover-zoom" src="data:image/jpg;base64,${pr.image}" width="287px" height="260px"></a>
            <div class="card-body" style="height: 200px">
              <h5 class="card-title">${pr.pname}</h5>
                <p class="card-text">${pr.description}</p>
                  
              <div class="d-flex justify-content-between align-items-center">
                
               
              </div>
            </div>
          </div>
        </div>
           </c:when>
</c:choose>

 
      </c:forEach>
        </div>
        </div>
   </div>
   
    <h4>Bajaj</h4>
      <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
  <c:forEach var="pr" items="${viewPro}">
              <c:set var="brand" value="${pr.brand}"/>
  <c:choose> 
 <c:when test="${brand == 'bajaj'}">

      
   <div class="col-md-3">
          <div class="card mb-4 shadow-sm hoverDiv">
                <a href="proView/${pr.id}">
             <img alt="" class="card-img-top hover-zoom" src="data:image/jpg;base64,${pr.image}" width="287px" height="260px"></a>
            <div class="card-body" style="height: 200px">
              <h5 class="card-title">${pr.pname}</h5>
                <p class="card-text">${pr.description}</p>
                  
              <div class="d-flex justify-content-between align-items-center">
                
               
              </div>
            </div>
          </div>
        </div>
           </c:when>
</c:choose>

 
      </c:forEach>
        </div>
        </div>
   </div>
   
      <h4>Honda</h4>
      <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
  <c:forEach var="pr" items="${viewPro}">
              <c:set var="brand" value="${pr.brand}"/>
  <c:choose> 
 <c:when test="${brand == 'honda'}">

      
   <div class="col-md-3">
          <div class="card mb-4 shadow-sm hoverDiv">
                <a href="proView/${pr.id}">
             <img alt="" class="card-img-top hover-zoom" src="data:image/jpg;base64,${pr.image}" width="287px" height="260px"></a>
            <div class="card-body" style="height: 200px">
              <h5 class="card-title">${pr.pname}</h5>
                <p class="card-text">${pr.description}</p>
                  
              <div class="d-flex justify-content-between align-items-center">
                
               
              </div>
            </div>
          </div>
        </div>
           </c:when>
</c:choose>

 
      </c:forEach>
        </div>
        </div>
   </div>
   
     
   
   
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>