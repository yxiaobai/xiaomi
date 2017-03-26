package com.entity;

import lombok.Data;

@Data
public class OrderInfo {
    private int order_id;//订单id
    private int user_id;//用户id
    private double order_price;//订单价格
    private String order_name;//订单收货人
    private String order_addr;//收货地址
    private String order_phone;//收货人电话
    private String order_tel;//收货人联系电话
    private String order_desc;//订单备注
    private int state;//状态 1:可用状态  0:删除状态'
}
