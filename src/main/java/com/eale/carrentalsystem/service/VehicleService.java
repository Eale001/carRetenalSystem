package com.eale.carrentalsystem.service;


import com.eale.carrentalsystem.bean.Vehicle;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface VehicleService {

    /**
     * 查询全部
     * @return
     */
    List<Vehicle> findAll();

    /**
     * 根据Id查询
     * @param vehicleId
     * @return
     */
    Vehicle findById(Long vehicleId);

    /**
     * 保存
     * @param vehicle
     * @return
     */
    Vehicle modify(Vehicle vehicle);

    /**
     * 删除
     * @param vehicleId
     */
    void remove(Long vehicleId);

    /**
     * 根据条件查询
     * @param vehicle
     * @return
     */
    List<Vehicle> findByConditons(Vehicle vehicle);
}
