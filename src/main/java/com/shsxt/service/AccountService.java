package com.shsxt.service;

import com.github.pagehelper.PageInfo;
import com.shsxt.base.BaseService;
import com.shsxt.query.AccountQuery;
import com.shsxt.vo.Account;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lp on 2018/6/14.
 */
@Service
public class AccountService extends BaseService<Account>{


    public Map<String,Object> selectAccountsByParams(AccountQuery accountQuery){
        Map<String,Object> map=new HashMap<String,Object>();
        PageInfo<Account> pageInfo= queryForPage(accountQuery);
        map.put("total",pageInfo.getTotal());
        map.put("rows",pageInfo.getList());
        return map;
    }

}
