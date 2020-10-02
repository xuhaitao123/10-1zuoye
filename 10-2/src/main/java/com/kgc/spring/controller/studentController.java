package com.kgc.spring.controller;

import com.kgc.spring.entity.studentInfo;
import com.kgc.spring.service.studentInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class studentController {
@Resource
    studentInfoService studentInfoService;

@RequestMapping("/index")
    public String index(Model model){
    List<studentInfo> select = studentInfoService.select();
    model.addAttribute("list",select);
    return  "index";
}
@RequestMapping("/cha")
public String cha(Integer sid ,Model model){
    studentInfo updatecha = studentInfoService.updatecha(sid);
    model.addAttribute("cha",updatecha);
    return "upd";
}
@RequestMapping("/update")
public String update(studentInfo studentInfo){
    int update = studentInfoService.update(studentInfo);
    if(update>0){
        return "redirect:/index";
    }

    return "upd";
}
}
