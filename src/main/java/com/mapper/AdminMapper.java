package com.mapper;

import com.entity.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
public interface AdminMapper {
    @Select("select admins,password from xm_admin where adminid=1")
     List<Admin> admin_queryById();

    @Select("select password from xm_admin where admins = 'admin'")
    String query_admin_pass();

    @Update("update xm_admin set password=#{password} where adminid=1")
    void admin_update(String password);

    @Select("select count(*) from xm_admin where admins=#{admins} and password=#{password}")
    public boolean islogin(@Param("admins") String admins, @Param("password") String password);
}
