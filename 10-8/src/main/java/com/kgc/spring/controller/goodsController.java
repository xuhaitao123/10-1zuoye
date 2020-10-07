package com.kgc.spring.controller;

import com.kgc.spring.entity.goods;
import com.kgc.spring.entity.goodsExample;
import com.kgc.spring.service.goodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class goodsController {
    @Resource
    goodsService goodsService;
    @RequestMapping("/cha")
    public String cha(Integer goodsdistrict, Model model){
        goodsExample example=new goodsExample();
        goodsExample.Criteria criteria = example.createCriteria();
        criteria.andGoodsdistrictEqualTo(goodsdistrict);
        List<goods> cha = goodsService.cha(example);
        model.addAttribute("list",cha);
        return "main";
    }
    @RequestMapping("/xiu")
    public String xiu(Integer id, Model model){
        goods select = goodsService.select(id);
        model.addAttribute("cha",select);
        return "upd";
    }
    @RequestMapping("/update")
    public String update(goods goods, Model model){
        int update = goodsService.update(goods);
        return "redirect:/xiu";
    }
}
