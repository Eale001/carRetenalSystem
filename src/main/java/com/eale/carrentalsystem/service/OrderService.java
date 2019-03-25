package com.eale.carrentalsystem.service;

import com.eale.carrentalsystem.bean.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {

    /**
     * 查询全部
     * @return
     */
    List<Order> findAll();

    /**
     * 根据Id查询
     * @param orderId
     * @return
     */
    Order findById(Long orderId);

    /**
     * 保存,新增
     * @param order
     * @return
     */
    Order save(Order order);
}
