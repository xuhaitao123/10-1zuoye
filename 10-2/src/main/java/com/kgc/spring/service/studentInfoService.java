package com.kgc.spring.service;

import com.kgc.spring.entity.studentInfo;

import java.util.List;

public interface studentInfoService {
    List<studentInfo> select();
    studentInfo updatecha(Integer sid);
    int update(studentInfo studentInfo);
}
