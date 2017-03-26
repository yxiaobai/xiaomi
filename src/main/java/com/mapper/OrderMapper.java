package com.mapper;


import com.entity.Order;
import org.apache.ibatis.annotations.*;

import java.util.List;
public interface OrderMapper {
    /*查询订单信息*/
    @Select("select * from xm_order")
    public List<Order> xm_order_query();

    @Insert("insert into xm_order values(null,#{order_sn},#{order_data},#{goodsid},#{pro_name},#{pro_desc},#{pro_color},#{pro_num},#{pro_price},#{tal_price})")
    public void xm_order_insertfo(Order order);


    /*后台删除商品*/
    @Delete("delete from xm_order where order_id=#{order_id}")
    public void order_deleteById(int order_id);

    /*后台修改商品*/
    @Update("update xm_order set order_sn=#{order_sn},order_data=#{order_data},goodsid=#{goodsid},pro_name=#{pro_name},pro_desc=#{pro_desc},pro_color=#{pro_color},pro_num=#{pro_num},pro_price=#{pro_price},tal_price=#{tal_price} where order_id=#{order_id}")
    public void order_upda(Order order);


    /*通过id查询商品信息*/
    @Select("select * from xm_order where order_id=#{order_id}")
    public Order xm_querybyId(@Param(value = "order_id") int order_id);

}
