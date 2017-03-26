package com.mapper;

import com.entity.Comms;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommsMapper {
    @Select("select * from reply")
    public List<Comms> queall();

    @Select("select contents from reply where r_id=#{r_id}")
    public String queryById(int c_alid);

    @Insert("insert into reply values(null,1,#{contents},null)")
    public int intsert(Comms comms);

    @Delete("delete from reply where r_id=#{r_id}")
    public int delById(int id);
}
