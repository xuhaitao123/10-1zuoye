package com.kgc.spring.service;

import com.kgc.spring.entity.person;
import com.kgc.spring.mapper.personMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("personservice")
public class personServiceImpl implements personService {
    @Resource
    personMapper personMapper;
    @Override
    public List<person> select() {
        return personMapper.selectByExample(null);
    }

    @Override
    public int add(person person) {
        return personMapper.insert(person);
    }

    @Override
    public int delect(Integer id) {
        return personMapper.deleteByPrimaryKey(id);
    }
}
