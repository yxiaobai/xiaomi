package com.mapper;


import com.entity.GoodsInfo;
import com.entity.ShoppingCar;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ShoppingCarMapper {
    //点击增加购物车，商品数量默认为1
    @Insert("insert into xm_car values(null,#{userID},#{goodsID},#{goodsName},#{goodsImg},#{marketPrice},#{goodsColor},#{goodsType},#{goodsCount})")
    public void addShoppingCar(ShoppingCar shoppingCar);

    //判断该用户的购物车是否存在
    @Select("select id from xm_car where goodsID=#{goodsID} and userID=#{userID}")
    public String queryUserCar(@Param("goodsID") int goodsID, @Param("userID") String userID);
    //根据用户ID查找用户所属于的购User物车
    @Select("select * from xm_car where userID=#{userID}")
    public List<ShoppingCar> queryAllShoppingCar(@Param("userID") String userID);

    //根据goodsId查找商品
    @Select("select * from xm_goodsinfo where goodsID=#{goodsID}")
    public GoodsInfo queryGoodsInfoID(@Param("goodsID") int goodsID);

    @Delete("delete from xm_car where goodsID=#{goodsID}")
    public int dropShoppingCae(@Param("goodsID")int goodsID);
}
