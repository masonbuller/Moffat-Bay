<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Contact Us Form</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/Moffat-Bay/css/loginForm.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-12 col-sm-6 col-md-4">
				<form class="form-container" action="/Moffat-Bay/contact" method="post">
					<div class="text-center">
						<img src="/Moffat-Bay/images/black_anchor.png" width="150">
					</div>
					<div class="form-group">
						<h1 class="text-center">Moffat Bay</h1>
					</div>
					<p>Please send us an email with any questions that you may have.</p>
					<div class="form-group">
						<label class="form-label font-weight-bold">Full Name</label> 
						<input type="text" class="form-control" name="fullname" id="fullname" required>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Email Address</label>
						<input type="text" class="form-control" name="email" pattern="^(?=.{1,100}$)[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" oninvalid="this.setCustomValidity('Please match the format example@domain.com')" oninput="this.setCustomValidity('')" required>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Phone Number</label> 
						<input type="tel" class="form-control" name="phone" id="phone" pattern="^(\+\d{1,2}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$" required>
					</div>
					<div class="form-group">
						<label class="form-label font-weight-bold">Message</label> 
						<textarea class="form-control" id="message" rows="3" required></textarea>
					</div>
					<div class="button-group">
						<button type="submit" class="btn btn-outline-success">Submit</button>
					</div>
				</form>
			</section>
		</section>
	</div>
	<jsp:include page="/jsp/Landing/Footer.jsp" flush="true"/>
</body>
</html>