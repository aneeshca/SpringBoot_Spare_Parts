<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appoint sellers</title>


</head>
<body style="background-color:purple; ">
	<jsp:include page="Header.jsp"></jsp:include>
    <jsp:include page="AdminDashboard.jsp"></jsp:include>

   



	<div class="container ">
		<h2 class="text text-center text-success">Appointment of Seller</h2>
		
		
		<form action="SaveSeller" method="post" class="mx-1 mx-md-4">
			<div class="d-flex flex-row align-items-center mb-4">
				<i class="fas fa-user fa-lg me-3 fa-fw"></i>
				<div class="form-outline flex-fill mb-0">
					<input type="text" id="form3Example1c" class="form-control"
						name="fname" required="required" /> <label class="form-label"
						for="form3Example1c">Seller First Name</label>
				</div>
			</div>
			<div class="d-flex flex-row align-items-center mb-4">
				<i class="fas fa-key fa-lg me-3 fa-fw"></i>
				<div class="form-outline flex-fill mb-0">
					<input type="text" id="form3Example4cd" class="form-control"
						name="lname" required="required" /> <label class="form-label"
						for="form3Example4cd">Seller Last name</label>
				</div>
			</div>

			<div class="d-flex flex-row align-items-center mb-4">
				<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
				<div class="form-outline flex-fill mb-0">
					<input type="email" id="form3Example3c" class="form-control"
						name="email" required="required" /> <label class="form-label"
						for="form3Example3c">Seller Email</label>
				</div>
			</div>

			<div class="d-flex flex-row align-items-center mb-4">
				<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
				<div class="form-outline flex-fill mb-0">
					<input type="password" id="form3Example4c" class="form-control"
						name="password" required="required" /> <label class="form-label"
						for="form3Example4c">Create First time login Password</label>
				</div>
			</div>
			<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
				<button type="submit" class="btn btn-primary btn-lg">Register</button>
			</div>
			<p class="text-danger">${sel}</p>
		</form>
	</div>
	
</body>
</html>