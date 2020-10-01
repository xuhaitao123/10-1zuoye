package com.kgc.spring.mapper;

import com.kgc.spring.entity.meetingroom;
import com.kgc.spring.entity.meetingroomExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface meetingroomMapper {
    int countByExample(meetingroomExample example);

    int deleteByExample(meetingroomExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(meetingroom record);

    int insertSelective(meetingroom record);

    List<meetingroom> selectByExample(meetingroomExample example);

    meetingroom selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") meetingroom record, @Param("example") meetingroomExample example);

    int updateByExample(@Param("record") meetingroom record, @Param("example") meetingroomExample example);

    int updateByPrimaryKeySelective(meetingroom record);

    int updateByPrimaryKey(meetingroom record);
}