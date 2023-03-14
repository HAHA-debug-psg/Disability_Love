package com.controller;

import com.entities.Message;
import com.entities.UserInformation;
import com.service.IUserInformationService;
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
@RequestMapping("/userInformation")
public class UserInformationController {
    @Autowired
    IUserInformationService UserInformationService;


    @RequestMapping("/showPage")
    public String showPage(){
        //System.out.println("登录或者注册成功");
        return "userInformationShow";
    }

    @RequestMapping("/showAllPage")
    public String showAllPage(){
        //System.out.println("登录或者注册成功");
        return "userInformationShowAll";
    }

    @RequestMapping(value="/update")
    @ResponseBody
    public Message  update(@RequestBody Map<String,String> map)
            //@RequestBody Map<String,String> map
            //@RequestParam("hl_token") String token,
            //@RequestParam("age") String age ,@RequestParam("hl_token") String hl_token
            //(@RequestBody Map<String,String> map,HttpServletResponse response )
            throws IOException, ParseException {
        System.out.println("Updating information !");
        String token=map.get("hl_token");
        int id=Integer.parseInt(JWTUtils.getUserId(token));
        System.out.println("Show: user's id is "+id);
        //System.out.println("age is"+age);
                System.out.println("name");
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        Date date = sdf.parse(map.get("date"));
        UserInformation userI=new UserInformation(
                id,
                map.get("name"),
                map.get("gender"),
                Integer.parseInt(map.get("age")),
                map.get("marital_status"),
                null,
                map.get("address_province_code"),
                map.get("address_city_code"),
                map.get("address_county_code"),
                map.get("address_detail_code"),
                map.get("address"),
//                map.get("address_city"),
//                map.get("address_county"),
//                map.get("address_detail"),
                Integer.parseInt(map.get("height")),
                Integer.parseInt(map.get("weight")),
                map.get("disability"),
                map.get("education_background"),
                map.get("job"),
                map.get("introduction")
                );
        int ifUpdate=UserInformationService.updateUserInformation(userI);
        //return Integer.toString(ifUpdate);
        Message msg=new Message("更新成功",200,null);
        return msg;
    }


    @RequestMapping(value="/show")
    @ResponseBody
    public UserInformation show(HttpServletResponse response, @RequestBody Map<String,String> map,Model model) throws IOException, ParseException {
        System.out.println("Show user's information !");
        String token=map.get("hl_token");
        int id=Integer.parseInt(JWTUtils.getUserId(token));
        System.out.println("Show: user's id is "+id);
        UserInformation userI=UserInformationService.findUserInformationById(id);
        //return "info";
        return userI;
    }

    @RequestMapping(value="/showAll")
    @ResponseBody
    public List<UserInformation> showAll(HttpServletResponse response,Model model) throws IOException, ParseException {
        System.out.println("Show all user's information !");
//        String token=map.get("hl_token");
//        int id=Integer.parseInt(JWTUtils.getUserId(token));
//        System.out.println("Show: user's id is "+id);
        List<UserInformation> userI=UserInformationService.findUserInformationAll();
        System.out.println(userI);
        //return "info";
        //return userI;
        return userI;
    }

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
    //model.addAttribute("userInformation",userI);
    //Message msg=new Message("获取个人信息",200,null);



/*

    @RequestMapping("/select")
    public String findAllUserInformations(Model model) {
        System.out.println("查询所有用户");
        // 使用 service 层查询所有用户
        List<UserInformation> UserInformations = UserInformationService.findAllUserInformations();
        System.out.println(UserInformations);
        model.addAttribute("UserInformations",UserInformations);
        return "list";
    }


    @RequestMapping("/deleteUserInformation")
    public String deleteUserInformation(@RequestParam("id") Integer UserInformation_id) {
        System.out.println("删除选定用户");
        // 使用 service 层查询所有用户
        UserInformation UserInformations = UserInformationService.deleteUserInformation(UserInformation_id);
        System.out.println("删除成功！");
        return "list";
    }
*/




}
