package com.kgc.spring.service;

import com.kgc.spring.entity.bills;
import com.kgc.spring.entity.billsExample;

import java.util.Date;
import java.util.List;

public interface billsService {
    List<bills> select(Integer typeId,String billTime,String billTime1);
    List<bills> selectcha(billsExample example);
    int add(bills bills);
}
