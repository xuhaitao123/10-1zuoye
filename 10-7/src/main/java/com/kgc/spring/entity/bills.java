package com.kgc.spring.entity;

import java.util.Date;

public class bills {
    private Integer id;

    private String title;

    private Date billtime;

    private Integer typeid;

    private Integer price;

    private String explai;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getBilltime() {
        return billtime;
    }

    public void setBilltime(Date billtime) {
        this.billtime = billtime;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getExplai() {
        return explai;
    }

    public void setExplai(String explai) {
        this.explai = explai == null ? null : explai.trim();
    }
}