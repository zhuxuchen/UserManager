package com.ly.um.controller;

import com.ly.um.entity.SysUser;
import com.ly.um.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SysUserController {
    @Autowired
    SysUserService sysUserService;

    @RequestMapping("adduser.html")
    public String addUserPage(){
        return "adduser";
    }
    @RequestMapping("adduser.do")
    public String addUser(SysUser sysUser, HttpServletRequest request){
        System.out.println(sysUser);
        sysUserService.addSysUser(sysUser);
        //返回，重定向users.html
        return "redirect:"  + "/users.html";
    }

    //URL:需要显示的页面*.html *.do
    @RequestMapping("/login.html")
    public String loginPage(Model model){
        return "login";
    }
    @RequestMapping("/users.html")
    public String userPage(Model model){
        //1、调用Service层获取数据
        List<SysUser> userList = sysUserService.getAllUsers();
        //2、数据放入model
        model.addAttribute("userList",userList);
        return "users";
    }

    //处理登录请求
    @RequestMapping("/login.do")
    public String loginCheck(String user_code, String user_password,
                             HttpServletRequest request , Model model , HttpSession session){
        SysUser sysUser = sysUserService.checkUserPassword(user_code,user_password);
        if (sysUser == null){
            model.addAttribute("msg","用户名密码错误，请重试！");
            return "login";
        }
        //重定向，浏览器重新访问/users.html
        session.setAttribute("user",sysUser);
        return "redirect:" +  "/users.html";
    }

    //用于处理删除请求
    @RequestMapping("/deluser.do")
    public String delUser(int user_id, HttpServletRequest request){
        sysUserService.delUser(user_id);
        return "redirect:" +  "/users.html";
    }

    //编辑用户界面
    @RequestMapping("/edituser.html")
    public String editUser(int user_id, Model model){
        //需要修改的用户信息
        SysUser sysUser = sysUserService.getSysUserByID(user_id);
        //信息放入model request
        model.addAttribute("editUser",sysUser);
        return "editUser";
    }

    //实现编辑用户的功能
    @RequestMapping("edituser.do")
    public String editUserDo(SysUser user, HttpServletRequest request){
        sysUserService.updateSysUser(user);
        //浏览器重新访问/users.html
        return "redirect:" +  "/users.html";
    }
}
