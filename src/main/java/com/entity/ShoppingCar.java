package com.entity;
import lombok.Data;

@Data
public class ShoppingCar {
    private int id;//购物车ID
    private String userID;//用户名
    private int goodsID;//商品ID
    private String goodsName;//商品名
    private String goodsImg;//商品图片
    private double marketPrice;//价钱
    private String goodsColor;//颜色
    private String goodsType;//规格
    private int goodsCount;//优惠
}
