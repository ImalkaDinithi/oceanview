<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="../css/style.css">
		<link rel="stylesheet" href="../css/login.css">
		<script src="../js/validation.js"></script>
	</head>

	<body>

		<div>
			<h1>Welcome to Ocean View Reservation System</h1>
		</div>

		<div class="login-box">
			<h2>System Login</h2>

			<!-- 🔴 Show error message if login fails -->
			<% if(request.getParameter("error") !=null){ %>
				<div class="error-msg">
					Invalid login
				</div>
				<% } %>

					<form action="<%=request.getContextPath()%>/LoginServlet" method="post">
						<input type="text" name="username" id="username" placeholder="Username" required>
						<input type="password" name="password" id="password" placeholder="Password" required>
						<button class="login-btn" type="submit">Login</button>
					</form>
		</div>

	</body>

	</html>