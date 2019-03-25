package com.eale.carrentalsystem.service.impl;

import com.eale.carrentalsystem.bean.Vehicle;
import com.eale.carrentalsystem.dao.VehicleDao;
import com.eale.carrentalsystem.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VehicleServiceImpl implements VehicleService {

    @Autowired
    private VehicleDao vehicleDao;

    @Override
    public List<Vehicle> findAll() {
        return vehicleDao.findAll();
    }

    @Override
    public Vehicle findById(Long vehicleId) {
        return vehicleDao.findById(vehicleId).get();
    }

    @Override
    public Vehicle modify(Vehicle vehicle) {
        vehicleDao.save(vehicle);
        return vehicleDao.findById(vehicle.getVehicleId()).get();
    }

    @Override
    public void remove(Long vehicleId) {
        vehicleDao.deleteById(vehicleId);
    }

    @Override
    public List<Vehicle> findByConditons(Vehicle vehicle) {
        Example<Vehicle> example=Example.of(vehicle);
        return vehicleDao.findAll(example);
    }
}
