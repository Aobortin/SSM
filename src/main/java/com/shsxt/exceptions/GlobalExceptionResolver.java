package com.shsxt.exceptions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by lp on 2018/6/22.
 */
//@Component
public class GlobalExceptionResolver implements HandlerExceptionResolver{
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("error");
        modelAndView.addObject("ex","操作失败!");
        if(ex instanceof  ParamException){
            ParamException pe= (ParamException) ex;
            modelAndView.setViewName("param_error");
            modelAndView.addObject("ex",pe.getErrorMsg());
        }
        return modelAndView;
    }
}
