package com.kgc.spring.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.spring.entity.projectinfo;
import com.kgc.spring.entity.projectinfoExample;
import com.kgc.spring.service.projectinfoService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class projectController {
@Resource
    projectinfoService projectinfoService;
@RequestMapping("/a")
    public String k(){
    return "index";
}
/*@RequestMapping("/index")
    public String index(Model model,Integer status,String pageIndex){
    int pageNum=1;
    if(pageIndex!=null){
        pageNum=Integer.parseInt(pageIndex);
    }
    int pageSize=2;
    PageHelper.startPage(pageNum,pageSize);
    List<projectinfo> select = projectinfoService.select(status);
    PageInfo pageInfo=new PageInfo(select);
    model.addAttribute("pageInfo",pageInfo);
    return "index";
}*/
@RequestMapping("/index")
    public String index(Model model,Integer status,String pageIndex){

    int pageNum=1;
    if(pageIndex!=null){
        pageNum=Integer.parseInt(pageIndex);
    }
    int pageSize=2;
    PageHelper.orderBy("id desc");
    PageHelper.startPage(pageNum,pageSize);
    projectinfoExample example=new projectinfoExample();
    projectinfoExample.Criteria criteria = example.createCriteria();
    if(status!=null){
        criteria.andStatusEqualTo(status);
    }
        List<projectinfo> projectinfos = projectinfoService.selectByExample(example);
        PageInfo<projectinfo> pageInfo = new PageInfo<>(projectinfos);
        model.addAttribute("pageInfo",pageInfo);
        return "index";

}
@RequestMapping("/xiu")
    public  String xiu(Integer id,Model model){
    projectinfo updcha = projectinfoService.updcha(id);
    model.addAttribute("cha",updcha);
    return "upd";
}
@RequestMapping("/update")
public String update(projectinfo projectinfo){
    int update = projectinfoService.update(projectinfo);
    return  "redirect:/index";
}
}
