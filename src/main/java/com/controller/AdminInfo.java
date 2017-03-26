package com.controller;

import com.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class AdminInfo {
    @Autowired
    private AdminMapper adminMapper;

    @RequestMapping("/admin_query_id")
    public ModelAndView admin_query_Id(){
        ModelAndView mv=new ModelAndView("admin/update_pass");
        mv.addObject("admin_query",adminMapper.admin_queryById());
        return mv;
    }

    @RequestMapping("/admin_login")
    public String isLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        if(adminMapper.islogin(user,pass)){
            request.getSession().setAttribute("admins",user);
            return "admin/admin_index";
        }
        if(!adminMapper.islogin(user,pass)){
            return "admin/admin_login";
        }
        return "";
    }

    @RequestMapping("/admin_update")
    public String admin_update(HttpServletRequest req,String oldpassword, String passwoed){
        String ps = req.getParameter("oldpassword");
        String pas = adminMapper.query_admin_pass();
        String pass = req.getParameter("password");
        if (ps.equalsIgnoreCase(pas)){
            adminMapper.admin_update(pass);
            return "admin/update_sucess";
        }
            return "admin/update_fail";
    }
}
