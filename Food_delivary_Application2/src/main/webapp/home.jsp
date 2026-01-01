<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.food.model.Restaurant,com.food.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Restaurants</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body {
    background-color: #f4f4f4;
    padding: 20px 30px;
}

/* ================= NAVBAR ================= */
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
}

.nav-right a,
.nav-right button {
    margin-left: 15px;
    text-decoration: none;
    padding: 8px 14px;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
}

.login-btn {
    background: #007bff;
    color: white;
}

.register-btn {
    background: #28a745;
    color: white;
}

.logout-btn {
    background: #dc3545;
    color: white;
    border: none;
}

.profile-btn {
    background: #ff7a00;
    color: white;
}

.user-name {
    font-weight: bold;
    margin-right: 10px;
    color: #333;
}

/* ================= PAGE ================= */
h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
}

.restaurant-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 20px;
}

.restaurant-card {
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    transition: transform 0.3s;
}

.restaurant-card:hover {
    transform: scale(1.03);
}

.restaurant-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
}

.card-content {
    padding: 15px;
}

.restaurant-name {
    font-size: 18px;
    font-weight: bold;
    color: #222;
    margin-bottom: 5px;
}

.rating {
    color: #fff;
    background-color: #28a745;
    display: inline-block;
    padding: 3px 8px;
    border-radius: 5px;
    font-size: 14px;
    margin-bottom: 8px;
}

.address {
    font-size: 14px;
    color: #666;
    margin-bottom: 6px;
}

.description {
    font-size: 14px;
    color: #555;
    margin-bottom: 10px;
}

.eta {
    font-size: 14px;
    font-weight: bold;
    color: #e63946;
}
</style>
</head>

<body>

<%
    User loggedUser = (User) session.getAttribute("loggedUser");
%>

<!-- ✅ NAVBAR COMES FROM HERE -->
   <jsp:include page="header.jsp" />


<!-- ================= CONTENT ================= -->
<h1>Restaurants Hub</h1>

<div class="restaurant-container">
<%
    List<Restaurant> listofrestaurants =
        (List<Restaurant>) request.getAttribute("listofrestaurants");

    if (listofrestaurants != null) {
        for (Restaurant res : listofrestaurants) {
%>
    <a href="menu?restaurantId=<%= res.getId() %>" style="text-decoration:none;">
        <div class="restaurant-card">
            <img src="${pageContext.request.contextPath}/images/<%= res.getImageUrl() %>"
                 alt="Restaurant Image">
            <div class="card-content">
                <div class="restaurant-name"><%= res.getName() %></div>
                <div class="rating"><%= res.getRating() %></div>
                <div class="address"><%= res.getAddress() %></div>
                <div class="description"><%= res.getDescription() %></div>
                <div class="eta"><%= res.getEta() %></div>
            </div>
        </div>
    </a>
<%
        }
    }
%>
</div>

</body>
</html>
