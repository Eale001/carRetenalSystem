package com.eale.carrentalsystem.dao;

import com.eale.carrentalsystem.bean.Type;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TypeDao extends JpaRepository<Type,Long> {
}
