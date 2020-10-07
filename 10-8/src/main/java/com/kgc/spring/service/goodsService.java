package com.kgc.spring.service;

import com.kgc.spring.entity.goods;
import com.kgc.spring.entity.goodsExample;

import java.util.List;

public interface goodsService {
   List<goods> cha(goodsExample example);
   goods select(Integer id);
   int update(goods goods);

}
