<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user update</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

<h2>${sess.user.id}</h2>






<div class="container">
<h2 class="text-center text-warning">update</h2>
<form>
  
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
        <input type="text"  class="form-control" name="fname" />
        <label class="form-label" >First name</label>
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <input type="text"  class="form-control" name="lname"/>
        <label class="form-label" >Last name</label>
      </div>
    </div>
  </div>

  <div class="form-outline mb-4">
    <input type="text"  class="form-control" name="email" />
    <label class="form-label"  >Email</label>
  </div>


  <div class="form-outline mb-4">
    <select name="district" id="cars" class="form-control">
  <option value="ernakulam">ernakulam</option>
  <option value="idukki">idukki</option>
  <option value="kottayam">kottayam</option>
  <option value="palakkad">palakkad</option>
</select>
    <label class="form-label" >District</label>
  </div>


  <div class="form-outline mb-4">
   <select name="state" id="cars" class="form-control">
  <option value="Andhra Pradesh">Andhra Pradesh</option>
  <option value="kerala">kerala</option>
  <option value="tamilnadu">tamilnadu</option>
  <option value="goa">goa</option>
</select>
    <label class="form-label" >State</label>
  </div>


  <div class="form-outline mb-4">
    <input type="text"  class="form-control" />
    <label class="form-label" name="phone">Phone</label>
  </div>


  <div class="form-outline mb-4">
    <textarea class="form-control" name="address"  rows="4"></textarea>
    <label class="form-label" >Address</label>
  </div>

 


  <button type="submit" class="btn btn-primary btn-block mb-4">Update</button>
</form>
</div>

</body>
</html>