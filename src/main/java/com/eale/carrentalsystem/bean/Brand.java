package com.eale.carrentalsystem.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * 品牌实体
 */
@Entity
@Table(name = "car_rental_brand")
public class Brand {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="brand_id")
    private Long brandId;//品牌Id

    @Column(name = "brand_name")
    private String brandName;//品牌名称

    @Column(name = "brand_years")
    private String brandYeaes;//品牌成立年限

    @Column(name = "brand_comment")
    private String brandComment;//品牌评价

    @ManyToOne
    @JoinColumn(name = "type_id")
    private Type type;//品牌类型

    @Column(name = "create_user")
    private String createUser;//创建人

    @Column(name = "create_time")
    private Date createTime;//创建时间

    @Column(name = "update_user")
    private String updateUser;//修改人

    @Column(name = "update_time")
    private Date updateTime;//修改时间

    public Brand() {
    }

    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getBrandYeaes() {
        return brandYeaes;
    }

    public void setBrandYeaes(String brandYeaes) {
        this.brandYeaes = brandYeaes;
    }

    public String getBrandComment() {
        return brandComment;
    }

    public void setBrandComment(String brandComment) {
        this.brandComment = brandComment;
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
        return "Brand{" +
                "brandId=" + brandId +
                ", brandName='" + brandName + '\'' +
                ", brandYeaes='" + brandYeaes + '\'' +
                ", brandComment='" + brandComment + '\'' +
                ", createUser='" + createUser + '\'' +
                ", createTime=" + createTime +
                ", updateUser='" + updateUser + '\'' +
                ", updateTime=" + updateTime +
                '}';
    }
}
