package com.controller;

import com.entities.Message;
import com.entities.UserMateSelection;
import com.entities.UserMateSelection;
import com.entities.UserTrend;
import com.service.IUserMateSelectionService;
import com.service.IUserTrendService;
import com.utils.JWTUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.utils.JWTUtils;

/**
 * author ；周某
 */

@Controller
@RequestMapping("/useMateSelection")
public class UserMateSelectionController {
    @Autowired
    IUserMateSelectionService UserMateSelectionService;


    /**
     * 更新用户择偶信息
     * @param map
     * @return
     * @throws IOException
     * @throws ParseException
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Message update(@RequestBody Map<String, String> map) throws IOException, ParseException {
//@RequestBody Map<String,String> map
//@RequestParam("hl_token") String token,
//@RequestParam("age") String age ,@RequestParam("hl_token") String hl_token
//(@RequestBody Map<String,String> map,HttpServletResponse response )
        String token = map.get("hl_token");
        int id = Integer.parseInt(JWTUtils.getUserId(token));
        System.out.println("Show: user's id is " + id);

        System.out.println("Updating mate selection information !");
        UserMateSelection userMS = new UserMateSelection(
                id,
                map.get("expect_marital_status"),
                map.get("expect_address_province_code"),
                map.get("expect_address_city_code"),
                map.get("expect_address_county_code"),
                map.get("expect_address"),
                Integer.parseInt(map.get("expect_age_min")),
                Integer.parseInt(map.get("expect_age_max")),
                Integer.parseInt(map.get("expect_height_min")),
                Integer.parseInt(map.get("expect_height_max")),
                Integer.parseInt(map.get("expect_weight_min")),
                Integer.parseInt(map.get("expect_weight_max"))
        );

        Message msg = new Message("更新成功", 200, null);
        return msg;
    }

    /**
     * 展示用户自身的择偶信息
     * @param response
     * @param map
     * @param model
     * @return
     * @throws IOException
     * @throws ParseException
     */
    @RequestMapping(value = "/show")
    @ResponseBody
    public UserMateSelection show(HttpServletResponse response, @RequestBody Map<String, String> map, Model model)
            throws IOException, ParseException
    {
        System.out.println("Show user's mate selection information !");
        String token = map.get("hl_token");
        int id = Integer.parseInt(JWTUtils.getUserId(token));
        System.out.println("Show: user's id is " + id);
        UserMateSelection userMS = UserMateSelectionService.findUserMateSelectionById(id);
        return userMS;
    }



    @RequestMapping("/showPage")
    public String showPage(){
        //System.out.println("登录或者注册成功");
        return "userMateSelectionShow";
    }


    /**
     * 根据id显示某人的择偶信息
     * @param response
     * @param map
     * @param model
     * @return
     * @throws IOException
     * @throws ParseException
     */
    @RequestMapping(value = "/showSomeone")
    @ResponseBody
    public UserMateSelection showSomeone(HttpServletResponse response, @RequestBody Map<String, String> map, Model model) throws IOException, ParseException {
        int id = Integer.parseInt(map.get("some_id"));
        System.out.println("Show: someone's id is " + id);
        UserMateSelection userMS = UserMateSelectionService.findUserMateSelectionById(id);
        return userMS;
    }

}

    //System.out.println("age is"+age);
    //System.out.println("name");
    //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    // Date date = sdf.parse(map.get("date"));

//                Integer.parseInt(map.get("id")),
//                map.get("expect_marital_status"),
//                map.get("expect_address_province"),
//                Integer.parseInt(map.get("expect_address_city")),
//                map.get("marital_status"),
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
    // int ifUpdate=UserMateSelectionService.updateUserMateSelection(userI);
    //return Integer.toString(ifUpdate);

//        System.out.println("Show user's mate selection information !");
//        String token=map.get("hl_token");
//        int id=Integer.parseInt(JWTUtils.getUserId(token));

//        model.addAttribute("id",userI.getId());
//        model.addAttribute("name",userI.getName());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("id",userI.getId());
        //model.addAttribute("UserMateSelection",userI);
        //Message msg=new Message("获取个人信息",200,null);


        //return "info";





