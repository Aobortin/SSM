package com.shsxt.vo;

public class Card {
    private Integer id;

    private String num;

    private Integer userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}