package com.kgc.spring.mapper;

import com.kgc.spring.entity.projectinfo;
import com.kgc.spring.entity.projectinfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface projectinfoMapper {
    int countByExample(projectinfoExample example);

    int deleteByExample(projectinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(projectinfo record);

    int insertSelective(projectinfo record);

    List<projectinfo> selectByExample(projectinfoExample example);

    projectinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") projectinfo record, @Param("example") projectinfoExample example);

    int updateByExample(@Param("record") projectinfo record, @Param("example") projectinfoExample example);

    int updateByPrimaryKeySelective(projectinfo record);

    int updateByPrimaryKey(projectinfo record);
}