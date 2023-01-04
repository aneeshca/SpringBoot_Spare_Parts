<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="AdminDashboard.jsp"></jsp:include>
<div class="container" style="background-image: url('https://assets.materialup.com/uploads/02998541-ffb4-40f2-8226-c846024c778c/preview.png'); width:2000px;height: 1000px;" >
<br><br><br>
<h2 class="text-success text-center"><b>WELCOME ${sess.user.fname }</b></h2>


</div>


<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>
