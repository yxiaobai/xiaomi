package com.mapper;


import com.entity.GoodsInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface GoodsInfoMapper {
    /*查询所有商品*/
    @Select("select * from xm_goodsinfo")
    public List<GoodsInfo> queryAllGoods();

    /*查询小米明星单品的商品ID*/
    @Select("select GoodsID from xm_star")
    public List<Integer> queryAllStar();

    /*查询推荐的商品ID*/
    @Select("select GoodsID from xm_Recommend")
    public List<Integer> queryAllRecommend();

    /*根据GoodsID查商品*/
    @Select("select * from xm_goodsinfo where goodsID=${GoodsInfo}")
    public GoodsInfo queryGoods(@Param("GoodsInfo") int GoodsInfo);



    /*查询所有数据*/
    @Select("select * from xm_goodsinfo")  //注解方式从数据库查询
    public List<GoodsInfo> query();

    /*通过id查询商品信息*/
    @Select("select * from xm_goodsinfo where GoodsId=#{GoodsId}")
    public GoodsInfo goodsInfo_queryById(int id); //查 queryById()

    /*后台添加商品*/
    @Insert("insert into xm_goodsinfo values(null,#{c_ID},#{goodsName},#{goodsIntroduce},#{service},#{goodsImg},#{goodsUrl},#{marketPrice},#{isNew},#{discount},#{flag},#{class_cId})")
    public void goodsInfo_insert(@Param("c_ID") int c_ID, @Param("goodsName") String goodsName, @Param("goodsIntroduce") String goodsIntroduce, @Param("service") String service, @Param("goodsImg") String goodsImg, @Param("goodsUrl") String goodsUrl
            , @Param("marketPrice") Double marketPrice, @Param("isNew") int isNew, @Param("discount") int discount, @Param("flag") String flag, @Param("class_cId") int class_cId);

    /*后台删除商品*/
    @Delete("delete from xm_goodsinfo where goodsID=#{goodsID}")
    public void goodsInfo_deleteById(int id);


    /*后台修改商品*/
    @Update("update xm_goodsinfo set c_id=#{c_ID},GoodsName=#{goodsName},GoodsIntroduce=#{goodsIntroduce}," +
            "Service=#{service},GoodsUrl=#{goodsUrl},MarketPrice=#{marketPrice},IsNew=#{isNew},Discount=#{discount},flag=#{flag},class_cId=#{class_cId} where GoodsID=#{goodsID}")
    public void goodsInfo_update(GoodsInfo goodsInfo);

    /*后台通过id获取商品信息*/
    @Select("select * from xm_goodsinfo where goodsID=#{goodsID}")
    public GoodsInfo goodsInfo_updateById(@Param(value = "goodsID") int goodsID);










    /* 前台获取 */
    /*查询商品版本*/
    @Select("select edition from xm_edition where goodsID = #{goodsID}")
    List<String> queryedition(@Param("goodsID") int goodsID);

    /*查询商品颜色*/
    @Select("select color from xm_color where goodsID = #{goodsID}")
    List<String> querycolor(@Param("goodsID") int goodsID);

    /*查询商品图片*/
    @Select("select img from xm_img where goodsID = #{goodsID}")
    List<String> queryimg(@Param("goodsID") int goodsID);

    /*查询默认商品图片*/
    @Select("select img from xm_img where goodsID = #{goodsID} limit 1")
    String queryMoimg(@Param("goodsID") int goodsID);


    /*查询商品名字*/
    @Select("select goodsName from xm_goodsinfo where goodsID =  #{goodsID} ")
    String querylx(@Param("goodsID") int goodsID);





}
