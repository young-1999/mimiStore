package com.bjpowernode.controller;

import com.bjpowernode.pojo.Admin;
import com.bjpowernode.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author yao
 * @Description
 * @Date 17:35 2022/10/28
 * @Param null
 * @Return
**/
@Controller
@RequestMapping("/admin")
public class AdminAction {
    //切记：在所有的界面层，一定会有业务逻辑层的对象
    @Autowired
    AdminService adminService;

    //实现登录判断，并进行登录跳转
    @RequestMapping("/login")
    public String login(String name, String pwd, HttpServletRequest request){
        Admin admin = adminService.login(name, pwd);
        if (admin !=null){
            request.setAttribute("admin",admin);
            return "main";
        }else {
            request.setAttribute("errmsg","用户名或密码错误！");
            return "login";
        }


    }

}
