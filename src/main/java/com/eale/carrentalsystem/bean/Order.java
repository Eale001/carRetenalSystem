package com.eale.carrentalsystem.bean;

import javax.persistence.*;
import java.util.Date;

/**
 *
 * 订单实体
 */
@Entity
@Table(name = "car_rental_order")
public class Order {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="vehicle_id")
    private Long orderId;//订单Id

    @OneToOne
    private Vehicle vehicle;//订单车辆

    @OneToOne
    private User user;//下订单人

    @Column(name = "begin_time")
    private Date beginTime;//开始时间

    @Column(name = "end_time")
    private Date endTime;//结束时间

    @Column(name = "order_money")
    private Double money;//订单金额

    @Column(name = "order_state")
    private Integer state;//订单状态

    @OneToOne
    private Type type;//车辆类型

    @OneToOne
    private Brand brand;//车辆品牌

    @Column(name = "isComment")
    private Integer isComment;//评论状态

    @Column(name = "create_user")
    private String createUser;//创建人

    @Column(name = "create_time")
    private Date createTime;//创建时间

    @Column(name = "update_user")
    private String updateUser;//修改人

    @Column(name = "update_time")
    private Date updateTime;//修改时间

    public Order() {
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getIsComment() {
        return isComment;
    }

    public void setIsComment(Integer isComment) {
        this.isComment = isComment;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Vehicle getVehicle() {
        return vehicle;
    }

    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }

    public Date getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Date beginTime) {
        this.beginTime = beginTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
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

    @Override
    public String toString() {
        return "Order{" +
                "vehicleId=" + orderId +
                ", vehicle=" + vehicle +
                ", beginTime=" + beginTime +
                ", endTime=" + endTime +
                ", money=" + money +
                ", state=" + state +
                ", type=" + type +
                ", createUser='" + createUser + '\'' +
                ", createTime=" + createTime +
                ", updateUser='" + updateUser + '\'' +
                ", updateTime=" + updateTime +
                '}';
    }
}
