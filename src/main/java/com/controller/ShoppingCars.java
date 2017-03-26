package com.controller;

import com.entity.GoodsInfo;
import com.entity.ShoppingCar;
import com.mapper.GoodsInfoMapper;
import com.mapper.ShoppingCarMapper;
import utils.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class ShoppingCars {
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;
    @Autowired
    private ShoppingCarMapper shoppingCarMapper;
    @Autowired
    private HttpServletResponse response;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private HttpSession session;

    private ShoppingCar shoppingCar = new ShoppingCar();
    private GoodsInfo goodsInfo =new GoodsInfo();

    //添加购物车
    @RequestMapping("/addShoppingCar")
    public ModelAndView addShoppingCar(int goodsID) {
        System.out.println(goodsID);
        boolean b = true;
        ModelAndView mv = new ModelAndView("addShoppingCar");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        goodsInfo = goodsInfoMapper.goodsInfo_queryById(goodsID);
        //判断是否登录，否则添加到Cookie
        if (session.getAttribute("member") == null) {
            UUID uuid = UUID.randomUUID();
            List<Integer> lis = CookieUtils.queryAllCookie(request);
            for (int i : lis) {
                if (i == goodsID) {
                    b = false;
                    break;
                }
            }
            if (b) {
                goodsInfo = goodsInfoMapper.goodsInfo_queryById(goodsID);
                CookieUtils.addCookie(response, uuid.toString(), goodsInfo.getGoodsID() + "", 60000);
            } else {
                //System.out.println("该商品在Cookie中已存在");
            }
        } else {
            //判断该用户的购物车是否存在
            if (shoppingCarMapper.queryUserCar(goodsID, session.getAttribute("member").toString()) == null) {
                CookieUtils.replaceDao(shoppingCar, goodsInfo);
                //用户
                shoppingCar.setUserID(session.getAttribute("member").toString());
                //添加到数据库
                shoppingCarMapper.addShoppingCar(shoppingCar);
            }
        }
        mv.addObject("goods", goodsInfo);
        return mv;
    }

    //查看购物车
    @RequestMapping("/shoppingCar")
    public ModelAndView ShoppingCar() {
        List<GoodsInfo> li = new ArrayList<GoodsInfo>();
        ModelAndView mv = new ModelAndView("shoppingCar");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        //判断是否登录，否则查看Cookie
        if (session.getAttribute("member") == null) {
            //获取Cookie
            List<Integer> lis = CookieUtils.queryAllCookie(request);
            for (int i : lis) {
                li.add(shoppingCarMapper.queryGoodsInfoID(i));
            }
            mv.addObject("goods", li);
        } else {
            mv.addObject("goods", shoppingCarMapper.queryAllShoppingCar(session.getAttribute("member").toString()));
        }
        return mv;
    }

    //登录后把Cookie的内容放在数据库 方法,
    /*@RequestMapping("/cookieSave")
    @ResponseBody
    public void sa() {
        if (session.getAttribute("user") == null) {
            //获取Cookie
            List<Integer> lis = CookieUtils.queryAllCookie(request);
            for (int i : lis) {
                if (shoppingCarMapper.queryUserCar(i, 1) == null) {
                    GoodsInfo goodsInfo = shoppingCarMapper.queryGoodsInfoID(i);
                    CookieUtils.replaceDao(shoppingCar, goodsInfo);
                    //用户
                    shoppingCar.setUserID(1);
                    //添加到数据库
                    shoppingCarMapper.addShoppingCar(shoppingCar);
                }
            }
        }
    }*/
    @RequestMapping("/carNum")
    @ResponseBody
    public Integer Num(){
        if (session.getAttribute("member") == null) {
            Cookie[] cookies = request.getCookies();
            return cookies.length-1;
        }else{
            List<ShoppingCar> li=shoppingCarMapper.queryAllShoppingCar(session.getAttribute("member").toString());
            return li.size();
        }
    }
    @RequestMapping("/dropShoppingCar") @ResponseBody
    public String dropShoppingCar(int goodsID) {
        List<Integer> lis = CookieUtils.queryAllCookie(request);
        Cookie[] cookies = request.getCookies();
        if(session.getAttribute("member")==null) {
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    try {
                        if (goodsID == Integer.valueOf(cookie.getValue())) {
                            cookie.setMaxAge(-1);
                        }
                    } catch (Exception e) {
                        continue;
                    }
                }
            }
        }else{
            shoppingCarMapper.dropShoppingCae(goodsID);
        }
        return "删除成功";
    }
    //测试
    public void test() {

    }
}
