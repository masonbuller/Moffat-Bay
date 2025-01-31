<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>User Registration</title>
	<link rel="stylesheet" href="/Moffat-Bay/css/styles.css">
	
</head>
<body>

<jsp:include page="index.jsp" flush="true"/>

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