<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
		<title>Book Registration</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/Moffat-Bay/css/registrationForm.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
		<jsp:include page="/jsp/Landing/index.jsp" flush="true"/>
</head>
<body>
	<div class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-12 col-sm-6 col-md-4">
				<form class="form-container" action="/Moffat-Bay/registration" method="post">
					<div class="text-center">
						<img src="/Moffat-Bay/images/black_anchor.png" width="150">
					</div>
					<div class="form-group">
						<h1 class="text-center">Moffat Bay</h1>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Select Start Date</label>
						<input type="date" class="form-control" name="start-date" required>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Select End Date</label>
						<input type="date" class="form-control" name="end-date" required>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Guests</label>
						<input type="number" class="form-control" name="quantity" required>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Room Type</label>
							<select name="rooms" id="rooms">
								<option value="One King Size Bed">1 King Size Bed</option>
								<option value="One Queen Size Bed">1 Queen Size Bed</option>
								<option value="Two Queen Size Beds">2 Queen Size Beds</option>
							</select>
					</div>
					<div class="button-group">
						<button type="submit" class="btn btn-outline-success">Submit</button>
					</div>
					<div class="form-footer">
          				<p> Already have an account? <a href="/Moffat-Bay/jsp/Login/loginForm.jsp">Sign In</a></p>
        			</div>
				</form>
			</section>
		</section>
	</div>
</body>
</html>