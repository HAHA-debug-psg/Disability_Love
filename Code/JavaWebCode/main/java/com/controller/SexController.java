package com.controller;

import com.entities.Sex;
import com.service.impl.SexServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SexController {
    @Autowired
    SexServiceImpl sexService;

    @RequestMapping("/getSex")
    @ResponseBody
    public List<Sex> selectSex(){
        //直接返回查询出来的数据传给前端
        System.out.println("whattttt");
        List<Sex> list=sexService.selectAll();
        System.out.println(list);
        return list;
    }
}
