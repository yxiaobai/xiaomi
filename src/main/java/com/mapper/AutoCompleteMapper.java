package com.mapper;

import com.entity.GoodsInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface AutoCompleteMapper {
    List<GoodsInfo> getNames(@Param("goodsName") String goodsName);
}
