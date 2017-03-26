package com.controller;

import com.entity.Order;
import com.mapper.GoodsInfoMapper;
import com.mapper.OrderMapper;
import com.mapper.UserDaoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class xm_orderInfo {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;
    @Autowired
    private UserDaoMapper userDaoMapper;
    @RequestMapping("/xm_detail_order")
    public ModelAndView xm_adm(){
        ModelAndView mv=new ModelAndView("/admin/order_detail_admin");
        mv.addObject("show_order",orderMapper.xm_order_query());
        return mv;
    }
    @RequestMapping("/xm_order_insert")
    public String xm_order_insertInfo(Order order){
        orderMapper.xm_order_insertfo(order);
        return "redirect:/xm_detail_order";
    }


    @RequestMapping("/xm_order_del")
    public String xm_order_del(int order_id){
        orderMapper.order_deleteById(order_id);
        return "redirect:/xm_detail_order";
    }

    @RequestMapping("/xm_order_update")
    public String xm_order_update(Order order){
        System.out.println(order);
         orderMapper.order_upda(order);
        return "redirect:/xm_detail_order";
    }


    @RequestMapping("/ord_query_id")
    public ModelAndView updateVal(int order_id){
        ModelAndView mv=new ModelAndView("admin/order_detail_update");
        mv.addObject("order_qu",orderMapper.xm_querybyId(order_id));
        return mv;
    }


    /*随机shengchen*/
    @RequestMapping("/orderItem") @ResponseBody
    public String add_item(){
        String trandNo = String.valueOf((Math.random() * 9 + 1) * 1000000);
        String sdf = new SimpleDateFormat("yyyyMMddHHMMSS").format(new Date());
        String orderNo = trandNo.toString().substring(0, 4);
        return orderNo + sdf;
    }

    @RequestMapping("/yu")
    public ModelAndView orders(String u_name,HttpSession session){
        ModelAndView mv = new ModelAndView("yu");
        mv.addObject("goodsAll",goodsInfoMapper.queryAllGoods());
        u_name = (String)session.getAttribute("member");
        mv.addObject("as",userDaoMapper.queryxmuser(u_name));

        return mv;
    }
}
