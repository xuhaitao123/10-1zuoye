package com.kgc.spring.service;

import com.kgc.spring.entity.person;

import java.util.List;

public interface personService {
    List<person> select();
    int add(person person);
    int deleteByPrimaryKey(Integer id);
}
