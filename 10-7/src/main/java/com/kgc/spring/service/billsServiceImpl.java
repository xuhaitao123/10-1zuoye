package com.kgc.spring.service;

import com.kgc.spring.entity.bills;
import com.kgc.spring.entity.billsExample;
import com.kgc.spring.mapper.billsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
@Service("billsService")
public class billsServiceImpl implements billsService{
    @Resource
    billsMapper billsMapper;
    @Override
    public List<bills> select(Integer typeid, String billtime, String billtime1) {
        billsExample example=new billsExample();
        billsExample.Criteria criteria = example.createCriteria();
        if(typeid!=null){
            criteria.andTypeidEqualTo(typeid);
        }
        if(billtime!=null&&billtime.length()!=0){
            criteria.andBilltimeGreaterThan(billtime);
        }
        if(billtime1!=null&&billtime1.length()!=0){
            criteria.andBilltimeLessThan(billtime1);
        }

        return billsMapper.selectByExample(example);
    }

    @Override
    public List<bills> selectcha(billsExample example) {

        return billsMapper.selectByExample(example);
    }

    @Override
    public int add(bills bills) {
        return billsMapper.insert(bills);
    }
}
