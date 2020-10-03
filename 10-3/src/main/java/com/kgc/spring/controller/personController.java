package com.kgc.spring.controller;

import com.kgc.spring.entity.person;
import com.kgc.spring.service.personService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class personController {
    @Resource
    personService personService;

    @RequestMapping("/index")
    public String index(Model model){
        List<person> select = personService.select();
        model.addAttribute("list",select);
        return "index";
    }
    @RequestMapping("/zj")
    public String zj(person person){
        int add = personService.add(person);
        return "redirect:/index";
    }
    @RequestMapping("/dele")
    public String dele(Integer id){
        int i = personService.deleteByPrimaryKey(id);
        return "redirect:/index";
    }
}
