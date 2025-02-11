<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>Lookup Summary</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/Moffat-Bay/css/reservationSummary.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
		<jsp:include page="/jsp/Landing/index.jsp" flush="true"/>
	</head>
	<body>
	<div class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-12 col-sm-6 col-md-5">
				<form class="form-container">
					<div class="text-center">
						<img src="/Moffat-Bay/images/black_anchor.png" width="150">
					</div>
					<div class="form-group">
						<h1 class="text-center">Moffat Bay</h1>
					</div>
					<div class="form-group">
						<h1 class="text-center fs-2">Reservation Summary</h1>
					</div>
					<div class="form-group">
						<label class="form-label">Dates </label><br>
						<label class="value"><%= session.getAttribute("dates") %></label>
					</div>
					<div class="form-group">
						<label class="form-label">Room </label><br>
						<label class="value"><%= session.getAttribute("room") %></label>
					</div>
					<div class="form-group">
						<label class="form-label">Guests </label><br>
						<label class="value"><%= session.getAttribute("guests") %></label>
					</div>
					<div class="form-group" id="cost">
						<div class="text-muted">
							<label class="form-label">Subtotal</label>
							<label class="valueTotal"><%= session.getAttribute("subtotal") %></label>
						</div>
						<div class="text-muted">
							<label class="form-label">Tax</label>
							<label class="valueTotal"><%= session.getAttribute("tax") %></label>
						</div>
						<div class="total_label">
							<label class="form-label">TOTAL</label>
							<label class="valueTotal"><%= session.getAttribute("total") %></label>
						</div>
					</div>
					<div class="button-group">
						<button type="submit" class="btn btn-outline-success w-100"><a href="/Moffat-Bay/jsp/Landing/LandingPage.jsp">Okay</a></button>
					</div>
				</form>
			</section>
		</section>
	</div>
</body>
</html>