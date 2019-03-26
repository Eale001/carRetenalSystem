package com.eale.carrentalsystem.bean;

import javax.persistence.*;
import java.util.Date;

/**
 *
 * 车辆实体
 */
@Entity
@Table(name = "car_rental_vehicle")
public class Vehicle {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="vehicle_id")
    private Long vehicleId;//车辆Id

    @Column(name = "vehicle_name")
    private String vehicleName;//车辆名

    @Column(name = "vehicle_seat")
    private String vehicleSeat;//车辆座位

    @Column(name = "vehicle_price")
    private Double vehiclePrice;//车辆单价(多少/小时)

    @Column(name = "vehicle_state")
    private Integer vehicleState;//车辆状态

    @Column(name = "remark")
    private String remark;//车辆备注

    @Column(name = "picture")
    private String picture;//车辆图片

    @OneToOne
    private Brand brand;//车辆品牌

    @OneToOne
    private Type type;//车辆类型

    @Column(name = "create_user")
    private String createUser;//创建人

    @Column(name = "create_time")
    private Date createTime;//创建时间

    @Column(name = "update_user")
    private String updateUser;//修改人

    @Column(name = "update_time")
    private Date updateTime;//修改时间

    public Vehicle() {
    }

    public Long getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(Long vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getVehicleName() {
        return vehicleName;
    }

    public void setVehicleName(String vehicleName) {
        this.vehicleName = vehicleName;
    }

    public String getVehicleSeat() {
        return vehicleSeat;
    }

    public void setVehicleSeat(String vehicleSeat) {
        this.vehicleSeat = vehicleSeat;
    }

    public Double getVehiclePrice() {
        return vehiclePrice;
    }

    public void setVehiclePrice(Double vehiclePrice) {
        this.vehiclePrice = vehiclePrice;
    }

    public Integer getVehicleState() {
        return vehicleState;
    }

    public void setVehicleState(Integer vehicleState) {
        this.vehicleState = vehicleState;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "vehicleId=" + vehicleId +
                ", vehicleName='" + vehicleName + '\'' +
                ", vehicleSeat='" + vehicleSeat + '\'' +
                ", vehiclePrice=" + vehiclePrice +
                ", vehicleState=" + vehicleState +
                ", remark='" + remark + '\'' +
                ", brand=" + brand +
                ", type=" + type +
                ", createUser='" + createUser + '\'' +
                ", createTime=" + createTime +
                ", updateUser='" + updateUser + '\'' +
                ", updateTime=" + updateTime +
                '}';
    }
}
