package com.kgc.spring.mapper;

import com.kgc.spring.entity.assets;
import com.kgc.spring.entity.assetsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface assetsMapper {
    int countByExample(assetsExample example);

    int deleteByExample(assetsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(assets record);

    int insertSelective(assets record);

    List<assets> selectByExample(assetsExample example);

    assets selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") assets record, @Param("example") assetsExample example);

    int updateByExample(@Param("record") assets record, @Param("example") assetsExample example);

    int updateByPrimaryKeySelective(assets record);

    int updateByPrimaryKey(assets record);
}