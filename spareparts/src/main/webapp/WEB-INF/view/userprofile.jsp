<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>User Profile</title>
</head>
<body style="background-color: gray;">
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 text-warning">Update Profile</h3>
            
            
            
            <form action="../updateUserProfile" method="post">
           <input type="text" name="id" value="${userdata.user.id}"  class="form-control form-control-lg" hidden=""/>
              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" name="fname" value="${userdata.user.fname}"  class="form-control form-control-lg" />
                    <label class="form-label" >First Name</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" name="lname" value="${userdata.user.lname}"  class="form-control form-control-lg" />
                    <label class="form-label" >Last Name</label>
                  </div>

                </div>
              </div>
              <input type="text" name="aid" value="${address.id}"  class="form-control form-control-lg" hidden="" />
               <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" name="phone" value="${address.phone}"  class="form-control form-control-lg" />
                    <label class="form-label" >Phone number</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                   <textarea rows="2" cols="32"  name="address">${address.address}</textarea>
                    <label class="form-label" >Address</label>
                  </div>

                </div>
              </div>
               <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" name="pincode" value="${address.pincode}"  class="form-control form-control-lg" />
                    <label class="form-label" >Pin code</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" name="district" value="${address.district}"  class="form-control form-control-lg" />
                    <label class="form-label" >District</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input type="text" name="state" value="${address.state}"  class="form-control form-control-lg"  />
                    <label  class="form-label">State</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">
               </div>
               </div>

              <div class="mt-4 pt-2">
              <button class="btn btn-primary btn-lg" type="submit">Update Now</button>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>