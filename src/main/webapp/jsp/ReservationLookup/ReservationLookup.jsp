<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>Reservation Lookup</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/Moffat-Bay/css/ReservationLookup.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
		<jsp:include page="/jsp/Landing/index.jsp" flush="true"/>
	</head>
	<body>
	<%
		if (session.getAttribute("errorMessage") != null) {
			if (session.getAttribute("errorMessage") == "BlankFields") {
				session.setAttribute("message", "Please fill out at least one field.");
			} else if (session.getAttribute("errorMessage") == "SystemError") {
				session.setAttribute("message", "Could not lookup reservation. Please try again.");
			} else if (session.getAttribute("errorMessage") == "NoReservation") {
				session.setAttribute("message", "No reservation found.");
			} 
			%>
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
  				<strong>ERROR:</strong> <%= session.getAttribute("message") %>
  				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
	<%
			session.removeAttribute("errorMessage");
		}
	%>
	<div class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-12 col-sm-6 col-md-4">
				<form class="form-container" action="/Moffat-Bay/lookup" method="post">
					<div class="text-center">
						<img src="/Moffat-Bay/images/black_anchor.png" width="150">
					</div>
					<div class="form-group">
						<h1 class="text-center">Moffat Bay</h1>
					</div>
					<div class="form-group">
						<h1 class="text-center fs-2">Reservation Lookup</h1>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Reservation ID</label>
						<input type="text" class="form-control" name="reservationID">
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">OR</label>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Email</label>
						<input type="text" class="form-control" name="email">
					</div>
					<div class="button-group">
						<button type="submit" class="btn btn-outline-success">Lookup</button>
					</div>
					<div class="form-footer">
          				<p> No reservation? <a href="/Moffat-Bay/jsp/Reservation/BookReservation.jsp">Book Here</a></p>
        			</div>
				</form>
			</section>
		</section>
	</div>
</body>
</html>