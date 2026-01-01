package com.food.dao;

import java.util.List;
import com.food.model.Restaurant;

public interface RestaurantDao {

    List<Restaurant> getAllRestaurants();

    Restaurant getRestaurantById(int id);
}
