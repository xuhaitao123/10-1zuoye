package com.kgc.spring.service;

import com.kgc.spring.entity.projectinfo;
import com.kgc.spring.entity.projectinfoExample;
import com.kgc.spring.mapper.projectinfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("projectService")
public class projectinfoServiceImpl implements projectinfoService {
    @Resource
    projectinfoMapper projectinfoMapper;
    @Override
    public List<projectinfo> select(Integer status) {
        projectinfoExample example=new projectinfoExample();
        projectinfoExample.Criteria criteria = example.createCriteria();
        if(status!=3){
            criteria.andStatusEqualTo(status);
        }
        return projectinfoMapper.selectByExample(example);
    }

    @Override
    public projectinfo updcha(Integer id) {
        return projectinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int update(projectinfo projectinfo) {
        return projectinfoMapper.updateByPrimaryKey(projectinfo);
    }

    @Override
    public List<projectinfo> selectByExample(projectinfoExample example) {
        return projectinfoMapper.selectByExample(example);
    }
}
