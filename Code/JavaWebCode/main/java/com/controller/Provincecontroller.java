package com.controller;

import com.entities.Province;
import com.service.IprovinceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class Provincecontroller {
    @Autowired
    IprovinceService provinceService;

    @RequestMapping("/getdata")
    @ResponseBody
    public List<Province> showData(){
        System.out.println("Im getdata");
        return provinceService.selectAll();
    }

    @RequestMapping("/tt")
    public String index(){
        System.out.println("Im index");
        return "more";
    }

}
