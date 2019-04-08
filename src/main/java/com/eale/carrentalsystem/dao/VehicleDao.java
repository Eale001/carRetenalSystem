package com.eale.carrentalsystem.dao;

import com.eale.carrentalsystem.bean.Vehicle;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VehicleDao extends JpaRepository<Vehicle,Long> {
}
