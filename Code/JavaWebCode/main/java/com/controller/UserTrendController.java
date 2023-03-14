package com.controller;

import com.entities.UserTrend;
import com.service.IUserService;
import com.service.IUserTrendService;
import com.utils.JWTUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/userTrend")
public class UserTrendController {
    @Autowired
    IUserTrendService UserTrendService;

    @Autowired
    IUserService UserService;


    @RequestMapping("/showPage")
    public String showPage(){
        //System.out.println("登录或者注册成功");
        return "userTrendShow";
    }

    @RequestMapping("/showAllPage")
    public String showAllPage(){
        //System.out.println("登录或者注册成功");
        return "userTrendShowAll";
    }

    @RequestMapping(value = "/insert")
    @ResponseBody
    public String insert(HttpServletResponse response, @RequestBody Map<String, String> map) throws IOException, ParseException {
        System.out.println("Insert a trend!");
        String text = map.get("text");
        String token = map.get("hl_token");
        int uid = Integer.parseInt(JWTUtils.getUserId(token));
        String uname=UserService.findUserById(uid).getUsername();

        System.out.println("Insert a trend !   id is"+uid);

        int isInsert = UserTrendService.insertTrend(uid,uname, text);
        return Integer.toString(isInsert);
    }


    @RequestMapping(value="/show")
    @ResponseBody
    public List<UserTrend> show(HttpServletResponse response, @RequestBody Map<String,String> map, Model model) throws IOException, ParseException {
        System.out.println("Show user's trend !");
        String token=map.get("hl_token");
        int id=Integer.parseInt(JWTUtils.getUserId(token));
        System.out.println("Show: user's id is "+id);
        List<UserTrend> userTrend=UserTrendService.findUserTrendById(id);
        return userTrend;
    }


    @RequestMapping(value = "/delete")
    @ResponseBody
    public String delete(HttpServletResponse response, @RequestBody Map<String, String> map) throws IOException, ParseException {
        System.out.println("Insert a trend!");
        int tid = Integer.parseInt(map.get("t_id"));
        String token = map.get("hl_token");
        int uid = Integer.parseInt(JWTUtils.getUserId(token));

        int ifDelete = UserTrendService.deleteTrend(uid,tid);
        return Integer.toString(ifDelete);
    }

    @RequestMapping(value = "/showAll")
    @ResponseBody
    public List<UserTrend> showAll(HttpServletResponse response) throws IOException, ParseException {
//        String text = map.get("text");
//        String token = map.get("hl_token");
        System.out.println("Show all users' trend !");
        List<UserTrend> userTrends=UserTrendService.findUserTrendAll();
        return userTrends;
//        int uid = Integer.parseInt(JWTUtils.getUserId(token));
//
//        int isInsert = UserTrendService.insertTrend(uid, text);
//        return Integer.toString(isInsert);
    }
}



//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//
//
//
//        Date date = sdf.parse(map.get("date"));
//        UserTrend userI=new UserTrend(
//                Integer.parseInt(map.get("id")),
//                map.get("name"),
//                map.get("gender"),
//                Integer.parseInt(map.get("age")),
//                map.get("marital_status"),
//                date,
//                map.get("address_province"),
//                map.get("address_city"),
//                map.get("address_county"),
//                map.get("address_detail"),
//                Integer.parseInt(map.get("height")),
//                Integer.parseInt(map.get("weight")),
//                map.get("disability"),
//                map.get("education_background"),
//                map.get("job"),
//                map.get("introduction")
//        );
//        int ifUpdate=UserTrendService.updateUserTrend(userI);
//        return Integer.toString(ifUpdate);
