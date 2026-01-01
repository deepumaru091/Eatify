<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.login-box {
	background: #ffffff;
	width: 360px;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.login-box h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.login-box label {
	display: block;
	margin-top: 12px;
	font-weight: bold;
	color: #444;
}

.login-box input {
	width: 100%;
	padding: 10px;
	margin-top: 6px;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 14px;
}

.login-box input:focus {
	outline: none;
	border-color: #ff7a00;
}

.login-box button {
	width: 100%;
	margin-top: 20px;
	padding: 12px;
	background-color: #ff7a00;
	border: none;
	color: #fff;
	font-size: 16px;
	border-radius: 6px;
	cursor: pointer;
}

.login-box button:hover {
	background-color: #e66a00;
}

.register-link {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}

.register-link a {
	color: #007bff;
	text-decoration: none;
}

.register-link a:hover {
	text-decoration: underline;
}

.error {
	color: red;
	text-align: center;
	margin-bottom: 10px;
}
</style>
</head>

<body>

	<div class="login-box">
		<h2>Login</h2>

		<%-- Optional error message --%>
		<%
        String error = request.getParameter("error");
        if ("true".equals(error)) {
    %>
		<div class="error">Invalid email or password</div>
		<%
        }
    %>
		<%
    String registered = request.getParameter("registered");
    if ("true".equals(registered)) {
%>
		<h2 style="color: green; text-align: center;">Registration
			Successfully...</h2>
		<%
    }
%>

		<form action="login" method="post">

			<label>Email</label> <input type="email" name="email" required>

			<label>Password</label> <input type="password" name="password"
				required>

			<button type="submit">Login</button>
		</form>

		<div class="register-link">
			New user? <a href="register.jsp">Create account</a>
		</div>
	</div>

</body>
</html>
