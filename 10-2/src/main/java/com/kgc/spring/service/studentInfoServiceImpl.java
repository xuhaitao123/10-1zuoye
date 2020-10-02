package com.kgc.spring.service;

import com.kgc.spring.entity.studentInfo;
import com.kgc.spring.mapper.studentInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("studentInfoService")
public class studentInfoServiceImpl implements studentInfoService {
    @Resource
    studentInfoMapper studentInfoMapper;
    @Override
    public List<studentInfo> select() {
        return studentInfoMapper.selectByExample(null);
    }

    @Override
    public studentInfo updatecha(Integer sid) {
        return studentInfoMapper.selectByPrimaryKey(sid);
    }

    @Override
    public int update(studentInfo studentInfo) {
        return studentInfoMapper.updateByPrimaryKey(studentInfo);
    }
}
