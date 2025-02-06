<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Navbar</title>
	<link rel="stylesheet" href="/Moffat-Bay/css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
<%
	HttpSession mysession = request.getSession(false);
	if (mysession == null || mysession.getAttribute("email") == null) {
		request.setAttribute("loginStatus", "Login");
	} else {
		request.setAttribute("loginStatus", "Logged In");
	}
%>
<div class="container">
	<div class="navbar">
		<nav>
		<div class="logo">
			<ul>
				<img alt="logo" src="/Moffat-Bay/images/black_anchor.png" width="50px" height="50px">
				<h2>Moffat Bay Lodge</h2>
	
				<li><a href="/Moffat-Bay/jsp/Landing/LandingPage.jsp">Home</a></li>
				<li><a href="#">Amenities</a></li>
				<li><a href="/Moffat-Bay/jsp/AboutUs/AboutUs.jsp">About Us</a></li>
				<li><a href="/Moffat-Bay/jsp/Reservation/BookReservation.jsp">Book Reservation</a></li>
				<li><a href="/Moffat-Bay/jsp/Reservation/ReservationSummary.jsp">Reservation Summary</a></li>
				<li><a href="/Moffat-Bay/jsp/UserRegistration/UserRegistration.jsp">User Registration</a></li>
				<li><a href="/Moffat-Bay/jsp/Login/loginForm.jsp"><%= request.getAttribute("loginStatus") %></a></li>
			</ul>
		</div>
		</nav>
	</div>
</div>


</body>
</html>