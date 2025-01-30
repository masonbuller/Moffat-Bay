<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>User Registration</title>
	<link rel="stylesheet" href="/Moffat-Bay/css/styles.css">
	
</head>
<body>

<header>
<div class="container">
	<div class="navbar">
		<div class="logo">
			<img src="/Moffat-Bay/images/black-anchor.png" alt="logo" width="50" height="50">
			<h2>Moffat Bay Lodge</h2>
		</div>
		<nav>
			<ul>
				<li><a href="//localhost:8080/Moffat-Bay/jsp/LandingPage.jsp">Home</a></li>
				<li><a href="#">Amenities</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
				<li><a href="#">Book Reservation</a></li>
				<li><a href="http://localhost:8080/Moffat-Bay/jsp/UserRegistration.jsp">User Registration</a></li>
				<li><a href="http://localhost:8080/Moffat-Bay/jsp/loginForm.jsp">Login</a></li>
			</ul>
		</nav>
	</div>
</div>
</header>

<div class="container">
	<h2>User Registration</h2>
	<form action="/submit_registration" method="post">
		<div class="form-group">
			<label for="firstName">First Name:</label>
			<input type="text" id="firstName" name="firstName" required>
		</div>
		<div class="form-group">
			<label for="lastName">Last Name:</label>
			<input type="text" id="lastName" name="lastName" required>
		</div>
		<div class="form-group">
			<label for="phoneNumber">Phone Number:</label>
			<input type="tel" id="phoneNumber" name="phoneNumber" required>
		</div>
		<div class="form-group">
			<label for="email">Email Address:</label>
			<input type="email" id="email" name="email" required>
		</div>
		<div class="form-group">
			<label for="password">Password:</label>
			<input type="password" id="password" name="password" required>
		</div>
		<button type="submit">Register</button>
	</form>
</div>


</body>
</html>