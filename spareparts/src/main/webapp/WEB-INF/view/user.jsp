<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var rows = $('#myTable tbody tr').length;
		$('#span').text(rows);
	})
</script>
</head>
<body>


	<c:forEach items="${cart}" var="cart">
		<table id="myTable" hidden="">
			<tbody>
				<tr>
					<td>${cart.cid}</td>
				</tr>

			</tbody>

		</table>

	</c:forEach>





	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">


			<form class="d-flex input-group w-auto" action="../searchElement"
				method="get">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" name="element" value="${search}">
				<button class="btn btn-success" type="submit">Search</button>

			</form>


			<div class="d-flex align-items-right">



				<%
					HttpSession ses = request.getSession();
				if (ses.getAttribute("sess") != null) {
				%>

				<h4>
					<a href="/" class="text-white">WrenchGear <i
						class="fa fa-wrench text-danger" aria-hidden="true"></i></a>
				</h4>
				&nbsp&nbsp <b style="color: white;">Cart</b><a href="../cart"
					class="btn btn-link px-3 me-2 text-warning"> <i
					class="fa fa-shopping-cart" aria-hidden="true"></i> <span id="span"
					class="text-danger"></span>
				</a>
				<div class="dropdown">
					<a class=" dropdown-toggle" type="button" data-toggle="dropdown"
						aria-expanded="false"> <b class="text-primary">
							${sess.user.fname}</b>
					</a>
					<div class="dropdown-menu" style="background-color: gray;">
						<a class="dropdown-item" href="../userProfile">Profile</a> <a
							class="dropdown-item" href="../gotobooklist">Booking histroy</a>
						<a class="dropdown-item" href="../logout">Logout</a>
					</div>
				</div>
				<h4 class="text text-success">&nbsp welcome</h4>

				<%
					} else {
				%>
				<a href="log" type="button" class="btn btn-link px-3 me-2">
					Login </a> <a href="reg" class="btn btn-primary me-3"> Sign up </a>

				<%
					}
				%>
			</div>
		</div>



	</nav>

	<div>
		<div id="demo" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://wallpapercave.com/wp/wp7280265.jpg"
						alt="Los Angeles" width="100%" height="500">
					<div class="carousel-caption">
						<h3>Repair your bike</h3>
						<p>We had original and compact product</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://wallpapercave.com/wp/wp1910271.jpg" alt="Chicago"
						width="100%" height="500">
					<div class="carousel-caption">
						<h3>ORGINAL</h3>
						<p>Spare Parts</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://wallpapercave.com/wp/wp7280323.jpg"
						alt="New York" width="100%" height="500">
					<div class="carousel-caption">
						<h3>POWER OF YAMAHA</h3>
						<p>Buy Good Products</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<div class="container-fluid">

		<div class="album py-5 bg-light">
			<div class="container">
				<div class="row">
					<c:forEach var="pr" items="${viewProduct}" end="11">
						<div class="col-md-3">
							<div class="card mb-4 shadow-sm hoverDiv">
								<a href="proView/${pr.id}"> <img alt=""
									class="card-img-top hover-zoom"
									src="data:image/jpg;base64,${pr.image}" width="287px"
									height="260px"></a>
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
					<c:forEach var="pr" items="${viewProduct}">
						<c:set var="brand" value="${pr.brand}" />
						<c:choose>
							<c:when test="${brand == 'yamaha'}">


								<div class="col-md-3">
									<div class="card mb-4 shadow-sm hoverDiv">
										<a href="proView/${pr.id}"> <img alt=""
											class="card-img-top hover-zoom"
											src="data:image/jpg;base64,${pr.image}" width="287px"
											height="260px"></a>
										<div class="card-body" style="height: 200px">
											<h5 class="card-title">${pr.pname}</h5>
											<p class="card-text">${pr.description}</p>

											<div
												class="d-flex justify-content-between align-items-center">


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
					<c:forEach var="pr" items="${viewProduct}">
						<c:set var="brand" value="${pr.brand}" />
						<c:choose>
							<c:when test="${brand == 'bajaj'}">


								<div class="col-md-3">
									<div class="card mb-4 shadow-sm hoverDiv">
										<a href="proView/${pr.id}"> <img alt=""
											class="card-img-top hover-zoom"
											src="data:image/jpg;base64,${pr.image}" width="287px"
											height="260px"></a>
										<div class="card-body" style="height: 200px">
											<h5 class="card-title">${pr.pname}</h5>
											<p class="card-text">${pr.description}</p>

											<div
												class="d-flex justify-content-between align-items-center">


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
					<c:forEach var="pr" items="${viewProduct}">
						<c:set var="brand" value="${pr.brand}" />
						<c:choose>
							<c:when test="${brand == 'honda'}">


								<div class="col-md-3">
									<div class="card mb-4 shadow-sm hoverDiv">
										<a href="proView/${pr.id}"> <img alt=""
											class="card-img-top hover-zoom"
											src="data:image/jpg;base64,${pr.image}" width="287px"
											height="260px"></a>
										<div class="card-body" style="height: 200px">
											<h5 class="card-title">${pr.pname}</h5>
											<p class="card-text">${pr.description}</p>

											<div
												class="d-flex justify-content-between align-items-center">


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