package com.mapper;

import com.entity.OrderInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface OrderInfoMapper {
    /*查询订单信息*/
    @Select("select * from tb_order")
    public List<OrderInfo> order_query();

    @Insert("insert into tb_order values(#{order_id},#{user_id},#{order_price},#{order_name},#{order_addr},#{order_phone},#{order_tel},#{order_desc},#{state})")
    public void order_insertfo(OrderInfo orderInfo);

    /*后台删除商品*/
    @Delete("delete from tb_order where order_id=#{order_id}")
    public void ord_deleteById(int order_id);

    /*后台修改商品*/
    @Update("update tb_order set user_id=#{user_id},order_price=#{order_price}," +
            "order_name=#{order_name},order_addr=#{order_addr},order_phone=#{order_phone},order_tel=#{order_tel},order_desc=#{order_desc},state=#{state} where order_id=#{order_id}")
    public void or_update(OrderInfo orderInfo);

    /*通过id查询商品信息*/
    @Select("select * from tb_order where order_id=#{order_id}")
    public OrderInfo ord_queryById(int order_id);


}
