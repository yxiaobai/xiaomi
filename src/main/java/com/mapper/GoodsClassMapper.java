package com.mapper;


import com.entity.GoodsClass;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface GoodsClassMapper {

    /*查询后台分类信息*/
    @Select("select * from xm_class")
    public List<GoodsClass> queryClassAll();

    /*添加后台分类信息*/
    @Insert("insert into xm_class values(null,#{class_name},#{class_cId})")
    public void classInsert(@Param("class_name") String class_name, @Param("class_cId") int class_cId);

    /*修改后台分类信息*/
    @Update("update xm_class set class_name=#{class_name},class_cId=#{class_cId} where class_id=#{class_id}")
    public void classUpdate(GoodsClass goodsClass);

    /*删除后台分类信息*/
    @Delete("delete from xm_class where class_id=#{class_id}")
    public void classDelete(int class_id);

    /*通过分类id查询信息*/

    @Select("select * from xm_class where class_id=#{class_id}")
    public GoodsClass goodsclass_ById(int class_id);
}
