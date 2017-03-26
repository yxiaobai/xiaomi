package com.controller;

import com.entity.UserDao;
import com.mapper.UserDaoMapper;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import utils.MD5Utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@Data
@Controller
@RequestMapping("xm_user")
public class UserReg {
    @Autowired
    private UserDaoMapper userDaoMapper;
    @RequestMapping(value = "/u_save",method = RequestMethod.POST)
    public String u_save(UserDao userDao, HttpServletRequest request, HttpServletResponse res) throws IOException {
        PrintWriter out = res.getWriter();
        request.setCharacterEncoding("utf-8");
        res.setCharacterEncoding("utf-8");
        res.setContentType("text/html;charset=utf8");
            String name = request.getParameter("u_name");
            String pass = request.getParameter("u_pass");
            String mdpass = MD5Utils.MD5For32(pass);
            String email = request.getParameter("u_email");
            String phone = request.getParameter("u_phone");
            String tname = request.getParameter("u_tname");
            String sex = request.getParameter("u_sex");
            String address = request.getParameter("u_address");
            String face = request.getParameter("u_face");
            userDao.setU_name(name);
            userDao.setU_pass(mdpass);
            userDao.setU_email(email);
            userDao.setU_phone(phone);
            userDao.setU_tname(tname);
            userDao.setU_sex(sex);
            userDao.setU_address(address);
            userDao.setU_face(face);
            userDaoMapper.u_insert(userDao);
            return "redirect:/index";

    }

}
