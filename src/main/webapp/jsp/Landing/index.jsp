<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Navbar</title>
	<link rel="stylesheet" href="/Moffat-Bay/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
<header>
<div class="container">
	<div class="navbar">
		<div class="logo">
			<img alt="logo" src="/Moffat-Bay/images/black_anchor.png" width="50px" height="50px">
			<h2>Moffat Bay Lodge</h2>
		</div>
		<nav>
			<ul>
				<li><a href="//localhost:8080/Moffat-Bay/jsp/LandingPage.jsp">Home</a></li>
				<li><a href="#">Amenities</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Book Reservation</a></li>
				<li><a href="#">Reservation Summary</a></li>
				<li><a href="/Moffat-Bay/jsp/UserRegistration/UserRegistration.jsp">User Registration</a></li>
				<li><a href="/Moffat-Bay/jsp/Login/loginForm.jsp">Login</a></li>
			</ul>
		</nav>
	</div>
</div>

</header>
</body>
</html>