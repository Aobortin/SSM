package com.shsxt.query;

import com.shsxt.base.BaseQuery;

/**
 * Created by lp on 2018/6/22.
 */
public class PayInQuery extends BaseQuery {
    private String name;
    private String type;
    private Integer aid;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }
}
