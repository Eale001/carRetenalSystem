package com.eale.carrentalsystem.dao;

import com.eale.carrentalsystem.bean.Brand;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BrandDao extends JpaRepository<Brand, Long> {
}
