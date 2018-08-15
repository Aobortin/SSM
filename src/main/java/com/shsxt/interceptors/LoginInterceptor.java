package com.shsxt.interceptors;

import com.shsxt.vo.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by lp on 2018/6/22.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        /**
         * 判断用户请求是否合法(session 中用户信息是否存在)
         *   不合法:跳转到登录页面
         *   合法 :放行
         */
        User currentUser= (User) request.getSession().getAttribute("currentUser");
        if(null==currentUser){
            /**
             * 用户未登录 或者 session失效
             */
        	System.out.println(request.getContextPath());//SSM
        	System.out.println(request.getServletPath());//main
            response.sendRedirect(request.getContextPath()+"/login");
            return false;// 后续方法不会被执行
        }
        return true;
    }
}

