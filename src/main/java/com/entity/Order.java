package com.entity;

import lombok.Data;
/*订单实体类*/
@Data
public class Order {
    private int order_id; //订单id
    private String order_sn; //订单号
    private String order_data;//添加日期
    private int goodsid;//商品id
    private String pro_name;//商品名
    private String pro_desc;//商品描述
    private String pro_color;//商品颜色
    private int pro_num;//商品数量
    private double pro_price;//商品单价
    private double tal_price;//订单总计
}
