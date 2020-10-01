package com.kgc.spring.controller;

import com.kgc.spring.entity.meetingroom;
import com.kgc.spring.service.meetingroomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class mettingController {
    @Resource
    meetingroomService meetingroomService;
    @RequestMapping("/index")
    public String index(Model model){
        List<meetingroom> select = meetingroomService.select();
        model.addAttribute("list",select);
        return  "index";
    }

    @RequestMapping("/zj")
    public String zj(meetingroom meetingroom){
        int add = meetingroomService.add(meetingroom);
        if(add>0){
            return "redirect:/index";
        }
        return "add";
    }
}
