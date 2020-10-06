package com.kgc.spring.service;

import com.kgc.spring.entity.projectinfo;
import com.kgc.spring.entity.projectinfoExample;

import java.util.List;

public interface projectinfoService {
    List<projectinfo> select(Integer status);
    projectinfo updcha(Integer id);
    int update (projectinfo projectinfo);
    List<projectinfo> selectByExample(projectinfoExample example);
}
