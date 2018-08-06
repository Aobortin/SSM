package com.shsxt.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ExceptionHandler;

import com.shsxt.exceptions.ParamException;

/**
 * Created by lp on 2018/6/22.
 */
public class BaseController {
    @ExceptionHandler
    public String exc(HttpServletRequest request, HttpServletResponse response,Exception ex){
        String viewName="error";
        String errorMsg="操作失败!";
        if(ex instanceof ParamException){
            ParamException pe= (ParamException) ex;
            viewName="param_error";
            errorMsg=pe.getErrorMsg();
        }
        request.setAttribute("ex",errorMsg);
        return viewName;
    }
}
