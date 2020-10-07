package com.kgc.spring.service;

import com.kgc.spring.entity.goods;
import com.kgc.spring.entity.goodsExample;
import com.kgc.spring.mapper.goodsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("goodsService")
public class goodsServiceImpl implements goodsService {
    @Resource
    goodsMapper goodsMapper;
    @Override
    public List<goods> cha(goodsExample example) {

        return goodsMapper.selectByExample(example);
    }

    @Override
    public goods select(Integer id) {
        return goodsMapper.selectByPrimaryKey(id);
    }

    @Override
    public int update(goods goods) {
        return goodsMapper.updateByPrimaryKey(goods);
    }

}
