package com.mapper;

import com.entity.UserDao;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserDaoMapper{
   @Insert("insert into xm_user values(null,#{u_name},#{u_pass},#{u_email},#{u_phone},#{u_tname},#{u_sex},#{u_address},#{u_face},Now())")
    public int u_insert(UserDao userDao);
  /*  @Select("select count(*) from xm_user where u_name=#{uName}")
    public int u_findName(String uName);*/

    public int login(UserDao userDao);

    List<UserDao> query();

    @Select("select count(*) from xm_user where u_name=#{u_name} and u_pass = #{u_pass}")
    int find(@Param("u_name") String u_name, @Param("u_pass") String u_Pass);

   @Select("select * from xm_user where u_name = #{u_name}")
   UserDao queryxmuser(@Param("u_name") String u_name);
 /* 查询用户头像*/
 @Select("select u_face from xm_user where u_name = #{u_name}")
 String queryface(@Param("u_name") String u_name);

  /*更改用户信息*/

    @Update("update xm_user set u_name=#{u_name},u_pass=#{u_pass},u_email=#{u_email},u_phone=#{u_phone},u_tname=#{u_tname},u_sex=#{u_sex},u_address=#{u_address},u_face=#{u_face},u_time=#{u_time} where u_id=#{u_id}")
    public void pencer_update(UserDao userDao);
}
