<%@ page import="com.food.model.User" %>

<%
    User user = (User) session.getAttribute("loggedUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>

<style>
body {
    font-family: Arial;
    background: #f4f4f4;
    padding: 40px;
}

.box {
    max-width: 400px;
    margin: auto;
    background: white;
    padding: 25px;
    border-radius: 8px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}
p {
    margin: 10px 0;
}
</style>
</head>

<body>

<div class="box">
    <h2>My Profile</h2>

    <p><b>Name:</b> <%= user.getName() %></p>
    <p><b>Email:</b> <%= user.getEmail() %></p>
    <p><b>Phone:</b> <%= user.getPhone() %></p>

    <!-- Later you can add EDIT PROFILE -->
</div>
<div >
	<a href="HomeServlet" 
   style="display:inline-block;
          margin-top:15px;
          padding:10px 15px;
          background:#007bff;
          color:white;
          text-decoration:none;
          border-radius:5px;">
   Back to Home
</a>

</div>
</body>
</html>

