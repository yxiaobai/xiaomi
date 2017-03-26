package com.mapper;

import com.entity.Community;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommunityMapper {
    @Select("select * from xm_community")
    public List<Community>queryalls();

    @Select("select content from xm_community where c_id=#{c_id}")
    public String queryById(int c_alid);

    @Insert("insert into xm_community values(null,1,#{title},#{content})")
    public int intsert(Community comm);

  @Delete("delete from xm_community where c_id=#{c_id}")
    public int delById(int id);
}
