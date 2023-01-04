<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">

.error{
    	color: red;
        
    font-family: Helvetica;
</style>

</head>
<body>
<br><br>
<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        
        
        

      

          <form action="selllogin" method="post">
          <div class="form-outline mb-4">
            <input type="email" class="form-control form-control-lg"
              placeholder="Enter a valid email address" name="email"/>
            <label class="form-label" for="form3Example3">Email address</label>
          </div>

       
          <div class="form-outline mb-3">
            <input type="password" class="form-control form-control-lg"
              placeholder="Enter password" name="password" />
            <label class="form-label" >Password</label>
          </div>
<p class="text-danger"><b>${error}</b></p>
          <div class="d-flex justify-content-between align-items-center">
          
          
            <a href="#!" class="text-body">Forgot password?</a>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
               style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="sellReg"
               class="link-danger">Register</a></p>
          </div>
      
      
        </form>
      </div>
    </div>
  </div>
 </section>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="script.js"></script>

</body>
</html>