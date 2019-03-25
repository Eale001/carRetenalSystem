package com.eale.carrentalsystem.service.impl;

import com.eale.carrentalsystem.bean.Order;
import com.eale.carrentalsystem.dao.OrderDao;
import com.eale.carrentalsystem.service.OrderService;
import jdk.nashorn.internal.ir.annotations.Immutable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderServiceImpl  implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> findAll() {
        return orderDao.findAll();
    }

    @Override
    public Order findById(Long orderId) {
        return orderDao.findById(orderId).get();
    }

    @Override
    public Order save(Order order) {
        orderDao.save(order);
        return orderDao.findById(order.getOrderId()).get();
    }
}
