package com.kgc.spring.service;

import com.kgc.spring.entity.assets;
import com.kgc.spring.entity.assetsExample;

import java.util.List;

public interface assetsService {
    List<assets> selectByExample(String assetId ,String assetType);
    int add(assets assets);
}
