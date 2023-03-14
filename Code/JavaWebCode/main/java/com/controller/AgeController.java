package com.controller;

import com.entities.Age;
import com.service.impl.AgeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AgeController {
    @Autowired
    AgeServiceImpl ageService;

    @RequestMapping("/getAge")
    @ResponseBody
    public List<Age> selectAge(){
        //直接返回查询出来的数据传给前端
//        System.out.println("whattttt");
        List<Age> list=ageService.selectAll();
//        System.out.println(list);
        return list;
    }
}
