<%@ page import="com.food.model.User" %>

<style>
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #ffffff;
    padding: 15px 30px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    margin-bottom: 30px;
}

.logo {
    font-size: 22px;
    font-weight: bold;
    color: #ff7a00;
    text-decoration: none;
}

.nav-right a,
.nav-right button {
    margin-left: 15px;
    text-decoration: none;
    padding: 8px 14px;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
    border: none;
}

.login-btn { background:#007bff; color:white; }
.register-btn { background:#28a745; color:white; }
.profile-btn { background:#ff7a00; color:white; }
.logout-btn { background:#dc3545; color:white; }
.cart-btn { background:#333; color:white; }

.user-name {
    font-weight: bold;
    margin-right: 10px;
    color: #333;
}
</style>

<%
    User loggedUser = (User) session.getAttribute("loggedUser");
%>

<div class="navbar">

    <!-- ✅ HOME / RESTAURANTS -->
    <a href="HomeServlet" class="logo">   Food Delivery</a>

    <div class="nav-right">

        <% if (loggedUser == null) { %>

            <!-- BEFORE LOGIN -->
            <a href="login.jsp" class="login-btn"> Login</a>
            <a href="register.jsp" class="register-btn">Register</a>

        <% } else { %>

            <!-- AFTER LOGIN -->
  			

            <!--  CART -->
            <a href="cart.jsp" class="cart-btn"> Cart</a>

            <!--  PROFILE -->
            <a href="profile.jsp" class="profile-btn"><span class="user-name">Hi, <%= loggedUser.getName() %></span></a>

            <!--  LOGOUT -->
            <form action="logout" method="post" style="display:inline;">
                <button class="logout-btn">Logout</button>
            </form>

        <% } %>

    </div>
</div>
