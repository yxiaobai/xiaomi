package com.entity;

import lombok.Data;

@Data
public class GoodsInfo {
    private int goodsID;//商品编号
    private int c_ID; //商品大分类ID
    private String goodsName;//商品名称
    private String goodsIntroduce;//商品描述
    private String service;//服务
    private String goodsImg; //图片
    private String goodsUrl;//图片链接
    private Double marketPrice;//价钱
    private int isNew;//是否是新品
    private int discount;//是否是优惠商品
    private String flag;//商品上下架
    private int class_cId; //商品分类推荐类型 0--不推荐商品 1--左侧商品分类推荐 2--导航商品分类推荐
}
