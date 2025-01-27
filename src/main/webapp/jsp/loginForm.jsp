<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>Login Form</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</head>
	<body>
	<div class="container">
		<form action="LoginServlet" method="post">
			<div class="mb-3">
				<label class="form-label">Email Address</label>
				<input type="text" class="form-control" name="email">
			</div>
			<div class="mb-3">
				<label class="form-label">Password</label> 
				<input type="password" class="form-control" name="password">
			</div>
			<button type="submit" class="btn btn-outline-success">Sign In</button>
		</form>
	</div>
</body>
</html>