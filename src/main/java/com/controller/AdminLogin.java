package com.controller;

import com.mapper.UserDaoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@Controller
/*@RequestMapping("/xm_user")*/
public class AdminLogin {
    @Autowired
    private UserDaoMapper userDaoMapper;
    @RequestMapping("/xm_admin_login")
    public String checckLogin(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setCharacterEncoding("utf-8");
        PrintWriter out = res.getWriter();
        String name = req.getParameter("username");
        String pass = req.getParameter("password");

        if(name.equalsIgnoreCase("admins") && pass.equalsIgnoreCase("password")){
            return "redirect:/admin/admin_index.jsp";
        }else{
            return "redirect:/admin/admin_login.jsp";
        }
    }
}
