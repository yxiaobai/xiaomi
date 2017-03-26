package com.mapper;

import com.entity.Carousel;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;


public interface CarouselMapper {

    /*查询轮播信息*/
    @Select("select * from xm_carousel")
    public List<Map<String,Object>> carousel_show();

    /*插入轮播信息*/
    @Insert("insert into xm_carousel values(null,#{title},#{img},#{url},#{flag})")
    public void carousel_insert(@Param("title") String title, @Param("img") String img, @Param("url") String url, @Param("flag") String flag);

    /*修改轮播信息*/
    @Update("update xm_carousel set title=#{title},url=#{url},flag=#{flag} where id=#{id}")
    public void carousel_update(Carousel carousel);

    /*删除轮播信息*/
    @Delete("delete from xm_carousel where id=#{id}")
    public void carousel_del(int id);

    /*通过ID获取轮播信息  在修改页面获取默认值*/
    @Select("select * from xm_carousel where id=#{id}")
    public Carousel carousel_selectID(@Param(value = "id") int id);

    //是否显示
    @Update("update xm_carousel set flag=#{flag} where id=#{id}")
    public void carousel_updateFlag(@Param("id") int id, @Param("flag") String flag);

    /* 前台轮播展示 */
    @Select("select * from xm_carousel where flag = 'n'")
    List<Carousel> querycarousel();


}
