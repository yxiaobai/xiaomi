package com.controller;

import com.entity.GoodsInfo;
import com.entity.ShoppingCar;
import com.mapper.ShoppingCarMapper;
import com.mapper.UserDaoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import utils.CookieUtils;
import utils.MD5Utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@Controller
public class UserLogin {
    @Autowired
    private UserDaoMapper userDaoMapper;
    @Autowired
    private ShoppingCarMapper shoppingCarMapper;

    private ShoppingCar shoppingCar = new ShoppingCar();
    @RequestMapping("/logins")
    public String checckLogin(HttpServletRequest req, HttpServletResponse res,HttpSession session) throws IOException {
        res.setCharacterEncoding("utf-8");
        PrintWriter out = res.getWriter();
        String name = req.getParameter("name");
        String pass = req.getParameter("pass");
        String mdpass = MD5Utils.MD5For32(pass);
        int count = userDaoMapper.find(name,mdpass);

        if(count==1){
            session.setAttribute("member",name);
            session.setAttribute("face",userDaoMapper.queryface(name));

                //获取Cookie
                List<Integer> lis = CookieUtils.queryAllCookie(req);
                for (int i : lis) {
                    if (shoppingCarMapper.queryUserCar(i, session.getAttribute("member").toString()) == null) {
                        GoodsInfo goodsInfo = shoppingCarMapper.queryGoodsInfoID(i);
                        CookieUtils.replaceDao(shoppingCar, goodsInfo);
                        //用户
                        shoppingCar.setUserID(session.getAttribute("member").toString());
                        //添加到数据库
                        shoppingCarMapper.addShoppingCar(shoppingCar);
                    }
                }
            //删除Cookies
            Cookie[] cookies = req.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    try {
                        if(cookie.getName().length()==36) {
                            System.out.println(cookie.getName());
                            cookie.setMaxAge(0);
                            cookie.setPath("/");
                            res.addCookie(cookie);
                        }
                    } catch (Exception e) {
                        continue;
                    }
                }
            }



            return "redirect:/index";
        }else{
            return "redirect:/login";
        }
    }
}
