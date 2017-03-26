package com.controller;

import com.entity.OrderInfo;
import com.mapper.OrderInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Tb_OrderInfo {
    @Autowired
    private OrderInfoMapper orderInfoMapper;
    @RequestMapping("/order_info")
    public ModelAndView xm_order_info(){
        ModelAndView mv=new ModelAndView("/admin/order_admin");
        mv.addObject("order_infoAll",orderInfoMapper.order_query());
        return mv;
    }

    @RequestMapping("/order_save")
    public String order_save(OrderInfo orderInfo){
        orderInfoMapper.order_insertfo(orderInfo);
        return "redirect:/order_info";
    }

    @RequestMapping("/order_del")
    public String order_del(int order_id){
       orderInfoMapper.ord_deleteById(order_id);
        return "redirect:/order_info";
    }

    @RequestMapping("/ord_update")
    public String ord_update(OrderInfo orderInfo){
        System.out.println(orderInfo);
      orderInfoMapper.or_update(orderInfo);
        return "redirect:/order_info";
    }

    @RequestMapping("/ord_update_id")
    public ModelAndView updateVal(int order_id){
        ModelAndView mv=new ModelAndView("admin/order_update");
        mv.addObject("order_update",orderInfoMapper.ord_queryById(order_id));
        return mv;
    }

}
