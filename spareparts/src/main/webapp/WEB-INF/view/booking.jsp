<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>check out</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">

    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style type="text/css">
.number{
width: 3em;
}

</style>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">


$(document).ready(function () {
    
    $('#qua').mouseup(function () {
        var price = $('#price').val();
        var q = $(this).val();
        var sum = price * q;
        $('#total').text(sum);
        $('#totalPrice').val(sum);
        $('#totalcount').val(q);
        
       

    });

});




</script>
   
    
  </head>
  <body class="bg-light">
  
   <nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
  
    <form class="d-flex input-group w-auto">
      <input
        type="search"
        class="form-control rounded"
        placeholder="Search"
        aria-label="Search"
        aria-describedby="search-addon"
      />
    
    </form>
    
    
      <div class="d-flex align-items-center">
       &nbsp<h4 class="text text-success">welcome </h4>&nbsp<h4 class="text text-primary">${sess.user.fname}</h4>&nbsp<h4 class="text text-primary">${sess.user.lname}</h4>
      
      
        <% 
          HttpSession ses=request.getSession();
          if(ses.getAttribute("sess")!=null){
        	  %>
        	  
        	  <a href=".../logout" type="button" class="btn btn-link px-3 me-2">
          logout
        </a>
        <% 	 
          }else{
        	  %>
        	   <a href=".../log" type="button" class="btn btn-link px-3 me-2">
          Login
        </a>
        <a href=".../reg" class="btn btn-primary me-3">
          Sign up
        </a>
        	
        	  <% 
        	         	  
          }
          
          
        
        %>
       
       
      </div>
  </div>
</nav>
  
  
    
<div class="container">
  <div class="py-5 text-center">
   
    <h2 class="text-primary">Checkout form</h2>
    <p class="lead"></p>
  </div>

  <div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Product Details</span>
        
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Product name</h6>
            <b class="text-primary">${proCheck.pname}</b><br>
            <h6 class="my-0">Description</h6>
            <small class="text-muted"><b>${proCheck.description }</b></small><br><br>
           <b> Price:${proCheck.price }</b><br>
            You can only buy 6 product at atime<br>
            <input id="price" type="number" value="${proCheck.price }" hidden="" >
              
            
          Select Qty:<input type="number" min="1"  max="6" id="qua" class="number" name="count" />
          </div>
          
          
      </ul>

     
        <div class="input-group">
       
        <b>  Total price :
         <span class="text-primary" id="total" ></span><br>
        </b></div>
     
    </div>




    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Billing address</h4>



      
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">First name</label>
            <input type="text" class="form-control" id="firstName" placeholder="" value="${sess.user.fname}" required>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Last name</label>
            <input type="text" class="form-control" id="lastName" placeholder="" value="${sess.user.lname }" required>
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div>


        <div class="mb-3">
          <label for="email">Email <span class="text-muted">(Optional)</span></label>
          <input type="email" class="form-control" id="email" value="${sess.email}">
          <div class="invalid-feedback">
            Please enter a valid email address for shipping updates.
          </div>
        </div>

        <div class="mb-3">
          <label for="address">Address</label>
          <input type="text" class="form-control" id="address" placeholder="1234 Main St" required value="${add.address }">
          <div class="invalid-feedback">
            Please enter your shipping address.
          </div>
        </div>

        <div class="mb-3">
          <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
          <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
        </div>
          <div class="row">
          <div class="col-md-3 mb-3">
            <label for="cc-name">State</label>
            <input type="text" class="form-control" id="cc-name" placeholder="" required value="${add.state }">
            
            
          </div>
          <div class="col-md-3 mb-3">
            <label for="cc-number">District</label>
            <input type="text" class="form-control" id="cc-number" placeholder="" required value="${add.district }">
            
          </div>
          <div class="col-md-3 mb-3">
            <label for="cc-number">Pincode</label>
            <input type="text" class="form-control" id="cc-number" placeholder="" required value="${add.pincode }">
         
          </div>
        </div>
     
          <div>
          <a href="../userProfile" class="btn btn-warning">Change Shipping Address</a>   
          </div>
          
        <hr class="mb-4">
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" >
          <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
        </div>

        
        <hr class="mb-4">

        <h4 class="mb-3">Payment</h4>

        <div class="d-block my-3">
          <div class="custom-control custom-radio">
            <input  name="paymentMethod" type="radio" class="custom-control-input" >
            <label class="custom-control-label" for="credit">Credit card</label>
          </div>
          <div class="custom-control custom-radio">
            <input  name="paymentMethod" type="radio" class="custom-control-input" >
            <label class="custom-control-label" for="debit">Debit card</label>
          </div>
          <div class="custom-control custom-radio">
            <input  name="paymentMethod" type="radio" class="custom-control-input" >
            <label class="custom-control-label" for="paypal">PayPal</label>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="cc-name">Name on card</label>
            <input type="text" class="form-control"  >
            <small class="text-muted">Full name as displayed on card</small>
            <div class="invalid-feedback">
              Name on card is required
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="cc-number">Credit card number</label>
            <input type="text" class="form-control"  >
            <div class="invalid-feedback">
              Credit card number is required
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 mb-3">
            <label for="cc-expiration">Expiration</label>
            <input type="text" class="form-control" >
            <div class="invalid-feedback">
              Expiration date required
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label for="cc-cvv">CVV</label>
            <input type="text" class="form-control"  >
            <div class="invalid-feedback">
              Security code required
            </div>
          </div>
        </div>
        <hr class="mb-4">
       
    
    </div>
  </div>

  
</div> 




<div class="container">

<form action="/proCheck" method="post" >
<input name="pid" value="${proCheck.id }" hidden=""> 
<input id="totalPrice" type="number" name="totalPrice" hidden="">
<input type="text" id="totalcount"  name="count" hidden="" />
<button class="btn btn-primary btn-lg " type="submit">Continue to checkout</button>
</form>


</div>
   <jsp:include page="footer.jsp"></jsp:include>
       
  </body>
</html>
