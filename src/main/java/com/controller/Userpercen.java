package com.controller;

import com.entity.UserDao;
import com.mapper.GoodsInfoMapper;
import com.mapper.UserDaoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import utils.MD5Utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class Userpercen {
    @Autowired
    private UserDaoMapper userDaoMapper;
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;

    @RequestMapping("/up_user")
    public ModelAndView up_user(String u_name)  {
        ModelAndView ma = new ModelAndView("up_user");
        ma.addObject("showusers",userDaoMapper.queryxmuser(u_name));
        return ma;
    }


    @RequestMapping("/per_update")
    public String ord_update(UserDao userDao, HttpSession session,HttpServletRequest request){
        String u_name = request.getParameter("u_name");
        String u_pass = request.getParameter("u_pass");
        String u_passs = MD5Utils.MD5For32(u_pass);
        String u_email = request.getParameter("u_email");
        String u_phone = request.getParameter("u_phone");
        String u_tname = request.getParameter("u_tname");
        String u_sex = request.getParameter("u_sex");
        String u_address = request.getParameter("u_address");
        String u_face = request.getParameter("u_face");
        userDao.setU_name(u_name);
        userDao.setU_pass(u_passs);
        userDao.setU_email(u_email);
        userDao.setU_phone(u_phone);
        userDao.setU_tname(u_tname);
        userDao.setU_sex(u_sex);
        userDao.setU_address(u_address);
        userDao.setU_face(u_face);


        userDaoMapper.pencer_update(userDao);
        session.removeAttribute("member");

        return "redirect:/index";
    }
    @RequestMapping("/percen")
    public ModelAndView orders(){
        ModelAndView mv = new ModelAndView("percen");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        return mv;
    }
    @RequestMapping("/percens")
    public ModelAndView orderss(){
        ModelAndView mv = new ModelAndView("percens");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        return mv;
    }

    @RequestMapping("/order")
    public ModelAndView rs(String u_name,HttpSession session,String moneys){
        ModelAndView mv = new ModelAndView("order");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        u_name = (String)session.getAttribute("member");
        mv.addObject("aas",userDaoMapper.queryxmuser(u_name));
        System.out.println(moneys);
        mv.addObject("moneys",moneys);
        //System.out.println(u_name);
        //System.out.println(userDaoMapper.queryxmuser(u_name));
        return mv;
    }
}
