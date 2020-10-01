package com.kgc.spring.service;

import com.kgc.spring.entity.meetingroom;

import java.util.List;

public interface meetingroomService {
    List<meetingroom> select();
    int add(meetingroom meetingroom);
}
