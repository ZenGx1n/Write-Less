package com.writeless.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 留言实体类
 */
public class Message {

    private Integer number;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date createTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date lastEditTime;
    //点赞数
    private int agree;
    //状态 0:审核中，1:通过，2:驳回
    private int status;
    private String content;
    private Integer userId;
    private User user;

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastEditTime() {
        return lastEditTime;
    }

    public void setLastEditTime(Date lastEditTime) {
        this.lastEditTime = lastEditTime;
    }

    public int getAgree() {
        return agree;
    }

    public void setAgree(int agree) {
        this.agree = agree;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
