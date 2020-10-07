package com.kgc.spring.mapper;

import com.kgc.spring.entity.bills;
import com.kgc.spring.entity.billsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface billsMapper {
    int countByExample(billsExample example);

    int deleteByExample(billsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(bills record);

    int insertSelective(bills record);

    List<bills> selectByExample(billsExample example);

    bills selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") bills record, @Param("example") billsExample example);

    int updateByExample(@Param("record") bills record, @Param("example") billsExample example);

    int updateByPrimaryKeySelective(bills record);

    int updateByPrimaryKey(bills record);
}