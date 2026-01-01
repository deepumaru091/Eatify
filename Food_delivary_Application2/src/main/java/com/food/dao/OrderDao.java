package com.food.dao;

import java.util.List;

import com.food.model.Order;
import com.food.model.OrderItem;

public interface OrderDao {

    // Insert order and return generated orderId
    int saveOrder(Order order);

    // Insert all order items for an order
    void saveOrderItems(List<OrderItem> items);

    // (Later use) Fetch orders by user
    List<Order> getOrdersByUserId(int userId);
}
