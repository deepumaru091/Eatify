package com.food.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = 
        "jdbc:mysql://localhost:3306/food_delivery_app?useSSL=false&serverTimezone=UTC";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.out.println("❌ MySQL Driver not found");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ Database connection failed");
            e.printStackTrace();
        }
        return conn;
    }
}
