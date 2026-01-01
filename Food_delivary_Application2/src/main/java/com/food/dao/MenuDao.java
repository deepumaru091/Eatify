package com.food.dao;

import java.util.List;
import com.food.model.Menu;

public interface MenuDao {

    List<Menu> getMenuByRestaurantId(int restaurantId);

    Menu getMenuById(int id);
}
