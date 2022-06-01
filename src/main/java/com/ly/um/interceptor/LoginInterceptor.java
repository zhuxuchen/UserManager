package com.ly.um.interceptor;

import com.ly.um.entity.SysUser;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        HttpSession session = request.getSession();

        SysUser user = (SysUser) session.getAttribute("user");
        if (user == null){
            response.setContentType("text/html;charset=utf-8");
            response.setHeader("Refresh","5;/UserManager/login.html");
            response.getWriter().print("请登录后再访问此页面！");
            return false;
        }
        return true;
    }
}
