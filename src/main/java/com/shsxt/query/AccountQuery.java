package com.shsxt.query;

import com.shsxt.base.BaseQuery;

/**
 * Created by lp on 2018/6/14.
 */
public class AccountQuery extends BaseQuery {
    private String aname;
    private Integer userId;
    private String type;
    private String time;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }
}
