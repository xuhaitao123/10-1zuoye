package com.kgc.spring.service;

import com.kgc.spring.entity.meetingroom;
import com.kgc.spring.mapper.meetingroomMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("meetingroomService")
public class meetingroomServiceImpl implements meetingroomService {
    @Resource
    meetingroomMapper meetingroomMapper;
    @Override
    public List<meetingroom> select() {
        return meetingroomMapper.selectByExample(null);
    }

    @Override
    public int add(meetingroom meetingroom) {
        return meetingroomMapper.insert(meetingroom);
    }
}
