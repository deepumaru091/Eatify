package com.food.dao;

import com.food.model.User;

public interface UserDao {

    // Register user
    boolean registerUser(User user);

    // Login user
    User loginUser(String email, String password);

    // Get user by ID
    User getUserById(int id);
}
