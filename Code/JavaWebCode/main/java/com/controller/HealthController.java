package com.controller;

import com.entities.Health;
import com.service.impl.HealthServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class HealthController {
    @Autowired
    HealthServiceImpl healthService;

    @RequestMapping("/getHealth")
    @ResponseBody
    public List<Health> selectSex(){
        //直接返回查询出来的数据传给前端
//        System.out.println("whattttt");
        List<Health> list=healthService.selectAll();
//        System.out.println(list);
        return list;
    }
}
