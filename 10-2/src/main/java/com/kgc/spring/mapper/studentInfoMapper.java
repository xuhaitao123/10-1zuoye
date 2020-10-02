package com.kgc.spring.mapper;

import com.kgc.spring.entity.studentInfo;
import com.kgc.spring.entity.studentInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface studentInfoMapper {
    int countByExample(studentInfoExample example);

    int deleteByExample(studentInfoExample example);

    int deleteByPrimaryKey(Integer sid);

    int insert(studentInfo record);

    int insertSelective(studentInfo record);

    List<studentInfo> selectByExample(studentInfoExample example);

    studentInfo selectByPrimaryKey(Integer sid);

    int updateByExampleSelective(@Param("record") studentInfo record, @Param("example") studentInfoExample example);

    int updateByExample(@Param("record") studentInfo record, @Param("example") studentInfoExample example);

    int updateByPrimaryKeySelective(studentInfo record);

    int updateByPrimaryKey(studentInfo record);
}