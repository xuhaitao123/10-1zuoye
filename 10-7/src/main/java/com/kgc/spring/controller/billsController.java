package com.kgc.spring.controller;

import com.kgc.spring.entity.bills;
import com.kgc.spring.entity.billsExample;
import com.kgc.spring.service.billsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
public class billsController {
@Resource
    billsService billsService;
/*@RequestMapping("/index")
    public String index(Model model, Integer typeid, String billTime, String billTime1){
    billsExample example=new billsExample();
    billsExample.Criteria criteria = example.createCriteria();
    if(typeid!=null){
        criteria.andTypeidEqualTo(typeid);
    }
    List<bills> selectcha = billsService.selectcha(example);
    model.addAttribute("list",selectcha);
    return "index";
}*/
@RequestMapping("/index")
    public String index(Model model, Integer typeid, String billtime, String billtime1){
    List<bills> selectcha = billsService.select(typeid,billtime,billtime1);
    model.addAttribute("list",selectcha);
    return "index";
}
@RequestMapping("/zj")
public  String zj(bills bills){
    int add = billsService.add(bills);
    return "redirect:/index";
}
}
