package com.eale.carrentalsystem.dao;

import com.eale.carrentalsystem.bean.Order;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDao extends JpaRepository<Order,Long> {
}
