package com.shsxt.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shsxt.query.AccountQuery;
import com.shsxt.service.AccountService;

/**
 * Created by lp on 2018/6/14.
 */
@Controller
@RequestMapping("account")
public class AccountController {
    @Resource
    private AccountService accountService;

    @RequestMapping("index")
    public  String index(HttpServletRequest request){
        request.setAttribute("ctx",request.getContextPath());
        return  "account";
    }

    @RequestMapping("selectAccountsByParams")
    @ResponseBody
    public Map<String,Object> selectAccountsByParams(@RequestParam(defaultValue = "1") Integer page,@RequestParam(defaultValue = "10") Integer rows, AccountQuery accountQuery){
        accountQuery.setPageNum(page);
        accountQuery.setPaseSize(rows);
        return accountService.selectAccountsByParams(accountQuery);
    }

    public  void delete(Integer id){
        accountService.delete(id);
    }
}
