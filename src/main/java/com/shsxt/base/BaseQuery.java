package com.shsxt.base;

/**
 * Created by lp on 2018/6/14.
 */
public class BaseQuery {
    private Integer pageNum=1;
    private Integer paseSize=10;

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPaseSize() {
        return paseSize;
    }

    public void setPaseSize(Integer paseSize) {
        this.paseSize = paseSize;
    }
}
