package com.eale.carrentalsystem.bean;

import javax.persistence.*;
import java.util.Date;

/**
 *
 * 订单评价实体
 */
@Entity
@Table(name = "car_rental_comment")
public class Comment {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="comment_id")
    private Long commentId;//评价Id

    @OneToOne
    private Order order;//评价订单

    @Column(name = "comment")
    private String comment;//评价

    @Column(name = "satisfaction")
    private Integer satisfaction;//好评程度

    @Column(name = "state")
    private Integer commentState;//评价状态

    @Column(name = "create_user")
    private String createUser;//创建人

    @Column(name = "create_time")
    private Date createTime;//创建时间

    @Column(name = "update_user")
    private String updateUser;//修改人

    @Column(name = "update_time")
    private Date updateTime;//修改时间

    public Comment() {
    }

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getSatisfaction() {
        return satisfaction;
    }

    public void setSatisfaction(Integer satisfaction) {
        this.satisfaction = satisfaction;
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

    public Integer getCommentState() {
        return commentState;
    }

    public void setCommentState(Integer commentState) {
        this.commentState = commentState;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", order=" + order +
                ", comment='" + comment + '\'' +
                ", satisfaction=" + satisfaction +
                ", createUser='" + createUser + '\'' +
                ", createTime=" + createTime +
                ", updateUser='" + updateUser + '\'' +
                ", updateTime=" + updateTime +
                '}';
    }
}
