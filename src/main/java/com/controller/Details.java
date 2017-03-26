package com.controller;

import com.mapper.GoodsInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Details {
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;
    @RequestMapping("/details")
    public ModelAndView querydetails(int goodsID){
        ModelAndView mv = new ModelAndView("details");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        mv.addObject("edition",goodsInfoMapper.queryedition(goodsID));
        mv.addObject("color",goodsInfoMapper.querycolor(goodsID));
        mv.addObject("img",goodsInfoMapper.queryimg(goodsID));
        mv.addObject("moImg",goodsInfoMapper.queryMoimg(goodsID));
        mv.addObject("lx",goodsInfoMapper.querylx(goodsID));
        System.out.println(goodsInfoMapper.querylx(goodsID));
        return mv;
    }

    /*@RequestMapping("/dtop")
    public ModelAndView querylx(int goodsID){
        ModelAndView mv = new ModelAndView("dtop");
        mv.addObject("lx",goodsInfoMapper.querylx(1));
        return mv;
    }*/
}
