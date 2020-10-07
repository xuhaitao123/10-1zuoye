package com.kgc.spring.mapper;

import com.kgc.spring.entity.bill_type;
import com.kgc.spring.entity.bill_typeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface bill_typeMapper {
    int countByExample(bill_typeExample example);

    int deleteByExample(bill_typeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(bill_type record);

    int insertSelective(bill_type record);

    List<bill_type> selectByExample(bill_typeExample example);

    bill_type selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") bill_type record, @Param("example") bill_typeExample example);

    int updateByExample(@Param("record") bill_type record, @Param("example") bill_typeExample example);

    int updateByPrimaryKeySelective(bill_type record);

    int updateByPrimaryKey(bill_type record);
}