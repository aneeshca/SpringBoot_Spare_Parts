<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
<style>
.bg {
  width: 100%;
  height: 100%;
  background-image: url('https://www.shutterstock.com/image-vector/social-media-marketing-communication-networking-600w-1627501252.jpg');
  background-size: cover;
  
}
label {
	font-weight:bolder;
}
.error{
    	color: red;
        
    font-family: Helvetica;
}
</style>

</head>
<body class="bg">

<div >
<div class="container">
<h2 class="text text-center text-success">Registration Form</h2>


<form  action="SellerReg" method="post" id="register">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label>Name</label>
      <input type="text" class="form-control" required="required" name="sname" >
    </div>
    <div class="form-group col-md-6">
      <label >Email</label>
      <input type="email" class="form-control" required="required" name="email">
    </div>
  </div>
  <div class="form-group">
    <label >Address</label>
    <input type="text" class="form-control"  placeholder="your company address" required="required" name="address">
  </div>
  <div class="form-group">
    <label >Company name</label>
    <input type="text" class="form-control"  placeholder="your firm name" required="required" name="cpname">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label class="text-b" >Phone number</label>
      <input type="text" class="form-control" required="required" name="phone">
    </div>
    <div class="form-group col-md-4">
      <label >Place</label>
       <input type="text" class="form-control" required="required" name="place">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label class="text-b" >Create a password</label>
      <input type="password" class="form-control" required="required" name="password">
    </div>
    </div>
  <button type="submit" class="btn btn-primary">Register</button>
     <p class="small fw-bold mt-2 pt-1 mb-0" style="font-weight: bold;color: white" >If you have an account? <a href="sellog"
                class="link-danger" style="font-weight:1000; ;">login</a></p>

<p class="text-danger">${exist}</p>
<p class="text-danger">${faild}</p>
</form>
</div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="script.js"></script>


</body>
</html>