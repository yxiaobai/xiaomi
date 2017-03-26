package com.controller;

import com.entity.GoodsClass;
import com.mapper.GoodsClassMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


@Controller
public class Goods_Class {
    @Autowired
    private GoodsClassMapper goodsClassMapper;
    @RequestMapping("xm_goods_class")
    public ModelAndView goodsClassAll(){
        ModelAndView mv=new ModelAndView("admin/xm_adminClass");
        mv.addObject("xm_goodsClass",goodsClassMapper.queryClassAll());
        return mv;
    }

    @RequestMapping("class_add")
    public String goodsClass_add(HttpServletRequest request){
        String class_name=request.getParameter("class_name");
        int class_cId=Integer.parseInt(request.getParameter("class_cId"));
        goodsClassMapper.classInsert(class_name,class_cId);
        return "redirect:/xm_goods_class";
    }

    @RequestMapping("class_update")
    public String goodsClass_Update(GoodsClass goodsClass){
        goodsClassMapper.classUpdate(goodsClass);
        return "redirect:/xm_goods_class";
    }

    @RequestMapping("class_delete")
    public String goodsClassDel(int class_id){
        goodsClassMapper.classDelete(class_id);
        return "redirect:/xm_goods_class";
    }

    @RequestMapping("class_ById")
    public ModelAndView StringgoodsClassById(int class_id){
        ModelAndView mv=new ModelAndView("admin/xm_updateClass");
        mv.addObject("goodsClassById",goodsClassMapper.goodsclass_ById(class_id));
        return mv;
    }

}
