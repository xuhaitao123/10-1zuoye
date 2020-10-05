package com.kgc.spring.service;

import com.kgc.spring.entity.assets;
import com.kgc.spring.entity.assetsExample;
import com.kgc.spring.mapper.assetsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("assetsService")
public class assetsServiceImpl implements  assetsService {
    @Resource
    assetsMapper assetsMapper;
    @Override
    public List<assets> selectByExample(String assetId ,String assetType) {
        assetsExample example=new assetsExample();
        assetsExample.Criteria criteria=example.createCriteria();
        if(assetId!=null&&assetId.length()!=0){
        criteria.andAssetidLike("%"+assetId+"%");
        }
        if(assetType!=null&&assetType.length()!=0){
            criteria.andAssettypeEqualTo(assetType);
        }
        return assetsMapper.selectByExample(example);
    }

    @Override
    public int add(assets assets) {
        return assetsMapper.insert(assets);
    }
}
