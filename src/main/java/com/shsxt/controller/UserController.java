package com.shsxt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shsxt.base.BaseController;
import com.shsxt.service.UserService;
import com.shsxt.vo.User;

/**
 * Created by lp on 2018/6/22.
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController{
    @Resource
    private UserService userService;

    @RequestMapping("queryUserByUserId")
    @ResponseBody
    public User queryUserByUserId(Integer userId){
       User user=  userService.queryUserByUserId(userId);
//       userService.test();
        return user;
    }


    @RequestMapping("index")
    public  String index(Integer userId, Model model){
        model.addAttribute("user",userService.queryUserByUserId(userId));
        userService.test();
        return "user";
    }
}
