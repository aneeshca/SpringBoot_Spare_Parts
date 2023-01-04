<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewUser</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>

</head>
<body style="background-color:teal;">
	<div class="container">
			<br>
			<div class="row">
		|<div class="col-4"></div>
			<div class="col-6" style="left:30px;">
				<h2 class="text-warning text-center">ALL USER LIST</h2>
				<table class="table table-bordered">
					<tr style="background-color: purple;">
						<th>Id</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Email</th>
						<th>User Type</th>
					</tr>
					<c:forEach var="usr" items="${user}">
						<tr>
							<td>${usr.user.id}</td>
							<td>${usr.user.fname}</td>
							<td>${usr.user.lname}</td>
							<td>${usr.email}</td>
							<td>${usr.utype}</td>
						</tr>
					</c:forEach>
				</table>
				</div>
			</div>
			</div>
		
</body>
</html>