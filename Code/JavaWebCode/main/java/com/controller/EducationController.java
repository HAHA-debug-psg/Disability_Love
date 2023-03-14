package com.controller;

import com.entities.Age;
import com.entities.Education;
import com.service.impl.AgeServiceImpl;
import com.service.impl.EducationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class EducationController {
    @Autowired
    EducationServiceImpl educationService;

    @RequestMapping("/getEducation")
    @ResponseBody
    public List<Education> selectAge(){
        //直接返回查询出来的数据传给前端
//        System.out.println("whattttt");
        List<Education> list=educationService.selectAll();
//        System.out.println(list);
        return list;
    }
}
