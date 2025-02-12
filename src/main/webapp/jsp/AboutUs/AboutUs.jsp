<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    	<title>About Us Form</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/Moffat-Bay/css/AboutUs.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
		<jsp:include page="/jsp/Landing/index.jsp" flush="true"/>
	</head>
<body>
	<div class="container-fluid">
		<section class="row">
			<section class="col">
				<form class="form-container" action="/Moffat-Bay/registration" method="post">
					<div class="text-center">
						<img src="/Moffat-Bay/images/black_anchor.png" width="150">
					</div>
					<div class="form-group">
						<h1 class="text-center">Moffat Bay</h1>
					</div>
					<div class="form-group">
						<h2 class="text-center">About Us</h2>
					</div>
					<div class="form-group">
						<p class="text-center">The Moffat Bay Lodge opened in March of 1977. It is a family owned and operated business. 
						We enjoy being out in nature. There are so many beautiful sites to see around the lodge. If you are
						looking for beautiful scenic views than this is the place for you. We have gorgeous mountains, 
						beautiful beaches, and amazing trees and rivers.</p>
					</div>
				</form>
			</section>
			<section class="col">
				<form class="form-container" action="/Moffat-Bay/contact" method="post">
					<div class="form-group">
						<h2 class="text-center">Contact Us</h2>
					</div>
					<div class="form-group">
						<p class="text-center"><u>Phone Number</u></p>
						<p class="text-center">555-234-9898</p>
					</div>
					<div class="form-group">
						<p class="text-center"><u>Facebook</u></p>
						<p class="text-center">Moffat Lodge Group</p>
					</div>
					<div class="form-group">
						<p class="text-center"><u>Email</u></p>
						<p class="text-center">mbaylodge@hotmail.com</p>
					</div>
					<div class="form-group" id="contact">
						<p class="text-center"><a href="/Moffat-Bay/jsp/AboutUs/ContactUs.jsp">Contact Form</a></p>
					</div>
			</section>
	</div>
</body>
</html>