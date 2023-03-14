package com.controller;

import com.entities.Salary;
import com.service.impl.SalaryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SalaryController {
    @Autowired
    SalaryServiceImpl salaryService;

    @RequestMapping("/getSalary")
    @ResponseBody
    public List<Salary> selectAge(){
        //直接返回查询出来的数据传给前端
//        System.out.println("salary");
        List<Salary> list=salaryService.selectAll();
//        System.out.println(list);
        return list;
    }
}
