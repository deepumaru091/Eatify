<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.register-box {
    background: #ffffff;
    width: 380px;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.register-box h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.register-box label {
    display: block;
    margin-top: 12px;
    font-weight: bold;
    color: #444;
}

.register-box input {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 14px;
}

.register-box input:focus {
    outline: none;
    border-color: #ff7a00;
}

.register-box button {
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

.register-box button:hover {
    background-color: #e66a00;
}

.login-link {
    text-align: center;
    margin-top: 15px;
    font-size: 14px;
}

.login-link a {
    color: #007bff;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}
</style>
</head>

<body>

<div class="register-box">
    <h2>Create Account</h2>

    <form action="register" method="post">

        <label>Name</label>
        <input type="text" name="name" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <label>Phone</label>
        <input type="text" name="phone" required>

        <button type="submit">Register</button>
    </form>

    <div class="login-link">
    
        Already have an account?
        <a href="login.jsp">Login</a>
    </div>
</div>

</body>
</html>
