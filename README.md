# Eatify – Food Delivery Web Application

Eatify is a full-stack **Food Delivery Web Application** developed using **Java, JSP, Servlets, JDBC, and MySQL**.  
It allows users to register, log in, browse restaurants, add food items to a cart, and place orders in a simple and user-friendly way.

## 🚀 Features

- 👤 User Registration & Login
- 🔐 Session-based Authentication
- 🏪 View Restaurants and Menus
- 🛒 Add / Remove Items from Cart
- 📦 Place Food Orders
- 👤 View User Profile
- 🚪 Secure Logout
- ⚙️ MVC Architecture (Controller, DAO, Model)

---

## 🛠️ Tech Stack

**Frontend**
- HTML
- CSS
- JSP

**Backend**
- Java
- Servlets
- JDBC

**Database**
- MySQL

**Tools**
- Eclipse IDE
- Apache Tomcat Server
- Git & GitHub

---
## 📂 Project Structure
Eatify/
│
├── src/
│ ├── com.food.servlets # Controllers
│ ├── com.food.dao # DAO Interfaces
│ ├── com.food.daoImpl # DAO Implementations
│ └── com.food.model # Model Classes
│
├── WebContent/
│ ├── jsp/ # JSP Pages
│ ├── css/ # Stylesheets
│ ├── images/ # Images
│ └── WEB-INF/
│
├── database/
│ └── eatify.sql # Database Script
│
└── README.md

## 🗄️ Database Design

Main tables used:
- `users`
- `restaurants`
- `menu`
- `cart`
- `orders`
- `order_items`

---

## ⚙️ How to Run the Project

1. Clone the repository  
   ```bash
   git clone https://github.com/deepumaru091/Eatify.git


Open the project in Eclipse (Dynamic Web Project)

Configure Apache Tomcat Server

Import the database:

Open MySQL

Run eatify.sql

------------------------------------
CREATE DATABASE food_delivery_app;
USE food_delivery_app;
-- restaurant table
CREATE TABLE restaurant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    image_url VARCHAR(255),
    rating DOUBLE(2,1),
    address VARCHAR(255),
    description VARCHAR(255),
    eta VARCHAR(50)
);
INSERT INTO restaurant 
(name, image_url, rating, address, description, eta) 
VALUES
('Spice Villa',
 '/images/r1.jpeg',
 4.5,
 'MG Road, Bangalore',
 'Authentic North Indian & Chinese cuisine',
 '30 mins'),

('Burger Hub',
 '/images/r2.jpeg',
 4.2,
 'Indiranagar, Bangalore',
 'Juicy burgers and crispy fries',
 '25 mins'),

('Pizza Corner',
 '/images/r3.jpeg',
 4.4,
 'Whitefield, Bangalore',
 'Wood-fired pizzas and garlic bread',
 '35 mins'),

('South Treat',
 '/images/r3.jpeg',
 4.6,
 'Jayanagar, Bangalore',
 'Pure South Indian meals and dosas',
 '20 mins'),

('Biryani Palace',
 '/images/r4.jpeg',
 4.7,
 'BTM Layout, Bangalore',
 'Hyderabadi dum biryani specials',
 '40 mins'),

('Taco Fiesta',
 '/images/r3.jpeg',
 4.1,
 'Koramangala, Bangalore',
 'Mexican tacos and burritos',
 '28 mins'),

('Sushi Zen',
 '/images/r4.jpeg',
 4.3,
 'UB City, Bangalore',
 'Fresh sushi and Japanese cuisine',
 '45 mins'),

('Cafe Bliss',
 '/images/r5.jpeg',
 4.0,
 'HSR Layout, Bangalore',
 'Coffee, desserts and light bites',
 '18 mins'),

('Grill Nation',
 '/images/r6.jpeg',
 4.5,
 'Marathahalli, Bangalore',
 'BBQ grills and smoky flavors',
 '32 mins'),

('Ice Cream Hub',
 '/images/r7.jpeg',
 4.8,
 'Malleshwaram, Bangalore',
 'Premium ice creams and desserts',
 '15 mins'),
 
 ('Ice  Hub',
 '/images/r8.jpeg',
 4.8,
 'Malleshwaram, Bangalore',
 'Premium ice creams and desserts',
 '5 mins'),
 
 (' Cream Hub',
 '/images/r9.jpeg',
 4.8,
 'Malleshwaram, Bangalore',
 'Premium ice creams and desserts',
 '25 mins'),
 
 ('Amma nanna',
 '/images/r10.jpeg',
 4.8,
 'Malleshwaram, Bangalore',
 'Premium ice creams and desserts',
 '15 mins');
-- menu table
CREATE TABLE menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    item_name VARCHAR(100),
    image_url VARCHAR(100),
    rating DOUBLE,
    description VARCHAR(255),
    price DOUBLE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);

INSERT INTO menu
(restaurant_id, item_name, image_url, rating, description, price)
VALUES
(1, 'Margherita Pizza', 'pizza.jpg', 4.5,
 'Classic cheese pizza with fresh basil', 249),

(1, 'Veg Burger', 'burger.jpg', 4.2,
 'Crispy veg patty with lettuce and sauce', 149),

(1, 'Chicken Biryani', 'biryani.jpg', 4.7,
 'Hyderabadi dum biryani with aromatic spices', 299),

(1, 'Grilled Sandwich', 'sandwich.jpg', 4.1,
 'Cheesy grilled sandwich with vegetables', 129),

(1, 'Ice Cream Sundae', 'icecream.jpg', 4.8,
 'Vanilla ice cream topped with chocolate sauce', 99),

(1, 'French Fries', 'fries.jpg', 4.3,
 'Crispy golden potato fries', 89),

(1, 'Veg Noodles', 'noodles.jpg', 4.0,
 'Stir fried noodles with fresh veggies', 179),

(1, 'Paneer Tikka', 'paneer.jpg', 4.6,
 'Spicy grilled paneer cubes', 229),

(1, 'Chocolate Cake', 'cake.jpg', 4.7,
 'Rich and moist chocolate cake', 159),

(1, 'Cold Coffee', 'coffee.jpg', 4.4,
 'Chilled coffee blended with milk and ice', 119);
 -- user table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    phone VARCHAR(15)
);
INSERT INTO users (name, email, password, phone) VALUES
('likhitha', 'rahul@gmail.com', 'rahul123', '9876543210'),
('gaowthami', 'priya@gmail.com', 'priya123', '9123456780'),
('roopa', 'amit@gmail.com', 'amit123', '9988776655'),
('deepa', 'sneha@gmail.com', 'sneha123', '9012345678'),
('lavanya', 'vikram@gmail.com', 'vikram123', '8899776655');

-- order table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,
    restaurant_id INT NOT NULL,

    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    total_amount DOUBLE NOT NULL,

    payment_method VARCHAR(50),
    status VARCHAR(30) DEFAULT 'PLACED',

    address VARCHAR(255)
);
-- order item table
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,

    order_id INT NOT NULL,

    menu_id INT NOT NULL,
    item_name VARCHAR(100),

    quantity INT NOT NULL,
    total_price DOUBLE NOT NULL,

    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
-------------------------------------------------------------
Update DB credentials in JDBC connection file

Run the project on server

Open browser:

http://localhost:8080/Eatify



