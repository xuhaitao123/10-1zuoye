package com.kgc.spring.controller;

import com.kgc.spring.entity.assets;
import com.kgc.spring.service.assetsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class assetsController {
@Resource
    assetsService assetsService;
@RequestMapping("/mohu")
    public String main(String assetid, String assettype, Model model){
    List<assets> assets = assetsService.selectByExample(assetid, assettype);
    model.addAttribute("list",assets);
    return "main";
}
@RequestMapping("/zj")
    public String zj(assets assets){
    int add = assetsService.add(assets);
    return "redirect:/mohu";
}
}
