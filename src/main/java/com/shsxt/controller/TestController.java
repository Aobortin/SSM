package com.shsxt.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lp on 2018/6/23.
 */
@Controller
public class TestController {
    @RequestMapping("test")
    public  String test(Model model){
        model.addAttribute("msg","hello ssm&freemarker");
        return "f01";
    }

    @RequestMapping("test02")
    public  String test02(HttpServletRequest request){
        request.setAttribute("ctx",request.getContextPath());
        return "f02";
    }
    
    @RequestMapping("uploadImg")
    public String uploadImg() {
    	return "uploadImg";
    }
    
}
