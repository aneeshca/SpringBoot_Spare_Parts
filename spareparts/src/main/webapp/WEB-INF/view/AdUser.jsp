<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>manage user</title>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

	
	<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>
</head>
<body >



	<div class="container">

		<div class="row content">
	
			<div class="col-3"></div>

			<div class="col">
			<h2 class="text-success
			">Manage User</h2>
				<table class="table table-bordered">
					<tr>
						<th>first name</th>
						<th>last name</th>
						<th>email</th>
						<th>remove User</th>
					</tr>
                  <tbody id="tbody">
					<c:forEach var="us" items="${usr}">
						 
						<tr>
							<td>${us.user.fname }</td>
							<td>${us.user.lname }</td>
							<td>${us.email }</td>
							<%-- <td><a href="deleteUser/${us.u_id}" class="btn btn-danger">Delete</a></td> --%>
						</tr>
						
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script>

$('#tbody').each(function(){

var rev = $(this).children('tr');
$(this).html(rev.get().reverse());

});

</script>
</body>
</html>