package com.entity;

import lombok.Data;

@Data
public class GoodsClass {
    private int class_id;//商品f分类编号
    private String class_name; //商品分类名
    private int class_cId;// 商品分类推荐
}
