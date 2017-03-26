package com.controller;

import com.entity.GoodsInfo;
import com.entity.ShoppingCar;
import com.mapper.CarouselMapper;
import com.mapper.GoodsInfoMapper;
import com.mapper.ShoppingCarMapper;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import utils.CookieUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Data
@Controller("goods")
public class Goods {
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;
    @Autowired
    private ShoppingCarMapper shoppingCarMapper;
    @Autowired
    private CarouselMapper carouselMapper;
    @RequestMapping("/index")
    public ModelAndView queryAllGoods(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        /*查询小米明星单品*/
        List<Integer> li=goodsInfoMapper.queryAllStar();
        List<GoodsInfo> lg=new ArrayList<GoodsInfo>();
        for(Integer i:li){
            lg.add(goodsInfoMapper.queryGoods(i));
        }
        mv.addObject("starAll",lg);
        /*查询推荐商品*/
        li=goodsInfoMapper.queryAllRecommend();
        lg=new ArrayList<GoodsInfo>();
        for(Integer i:li){
            lg.add(goodsInfoMapper.queryGoods(i));
        }
        mv.addObject("RecommendAll",lg);
        mv.addObject("carousel",carouselMapper.querycarousel());
        return mv;
    }
    @RequestMapping("/carNums") @ResponseBody
    public String carNum(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
        String num="0";
        if(session.getAttribute("member")!=null){
            List<ShoppingCar> li=shoppingCarMapper.queryAllShoppingCar(session.getAttribute("member").toString());
            num=li.size()+"";
        }else{
            List<Integer> ll=CookieUtils.queryAllCookie(request);
            num=ll.size()+"";
        }
        return num;
    }

    @RequestMapping("/carIndexShow") @ResponseBody
    public List<GoodsInfo> carIndexShow(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
        List<GoodsInfo> li=new ArrayList<GoodsInfo>();
        if(session.getAttribute("member")!=null){
            List<ShoppingCar> ls=shoppingCarMapper.queryAllShoppingCar(session.getAttribute("member").toString());
            for(ShoppingCar sc:ls){
                li.add(goodsInfoMapper.queryGoods(sc.getGoodsID()));
            }
        }else{
            List<Integer> ll=CookieUtils.queryAllCookie(request);
            for(int goodsID:ll){
                li.add(goodsInfoMapper.queryGoods(goodsID));
            }
        }
        return li;
    }
}
