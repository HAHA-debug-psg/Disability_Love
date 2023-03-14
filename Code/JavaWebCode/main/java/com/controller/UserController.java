package com.controller;

import com.entities.Message;
import com.entities.User;
import com.entities.UserInformation;
import com.service.IUserInformationService;
import com.service.IUserMateSelectionService;
import com.service.IUserService;
import com.utils.JWTUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    IUserService userService;

    @Autowired
    IUserInformationService UserInformationService;

    @Autowired
    IUserMateSelectionService UserMateSelectionService;

    @RequestMapping("/successPage")
//    @RequestBody Map<String, String> map,Model model
    public String successPage(Model model){
            //@RequestParam("hl_token") String token,Model model

//            @PathVariable("token") String token
//        @RequestBody Map<String, String> map,Model model

        System.out.println("Login or register success! Jumping!");
        System.out.println("success:Show user's information !");
        //String token=map.get("hl_token");
        //int id=Integer.parseInt(JWTUtils.getUserId(token));
        int id=1;
//        System.out.println("Show: user's id is "+id);
//        UserInformation userI=UserInformationService.findUserInformationById(id);
//        //model.addAttribute("hl_token",token);
//        model.addAttribute("id",userI.getId());
//        model.addAttribute("name",userI.getUname());
//        model.addAttribute("gender",userI.getGender());
//        model.addAttribute("age",userI.getAge());
//        model.addAttribute("marital_status",userI.getMarital_status());
//        model.addAttribute("birthday",userI.getBirthday());
//        model.addAttribute("address_province_code",userI.getAddress_province_code());
//        model.addAttribute("address_city_code",userI.getAddress_city_code());
//        model.addAttribute("address_county_code",userI.getAddress_county_code());
//        model.addAttribute("address_detail_code",userI.getAddress_detail_code());
//        model.addAttribute("address",userI.getAddress());
//        model.addAttribute("height",userI.getHeight());
//        model.addAttribute("weight",userI.getWeight());
//        model.addAttribute("disability",userI.getDisability());
//        model.addAttribute("education_background",userI.getEducation_background());
//        model.addAttribute("job",userI.getJob());
//        model.addAttribute("introduction",userI.getIntroduction());

        //model.addAttribute("前端对象名字",后端数据);
        return "userInformationShow";

    }




    @RequestMapping("/index")
    public String index(){
        //System.out.println("登录或者注册成功");
        return "index";
    }


    @RequestMapping("/loginPage")
    public String loginPage(){
        //System.out.println("登录或者注册成功");
        return "login";
    }

    @RequestMapping("/registerPage")
    public String registerPage(){
        //System.out.println("登录或者注册成功");
        return "register";
    }

    @RequestMapping("/test")

    public String test(Model model){
        //System.out.println("登录或者注册成功");
        //return "register";
        User user=new User("123456","password");
        model.addAttribute("msg","你妈死了");
        model.addAttribute("user",user);
        return "login";
    }

    @RequestMapping(value="/login")
    @ResponseBody
    /**
     * 添加依赖 fastjson  gosjons
     * 创建对象 message ： code  msg  《T》data
     */
    public Message login(@RequestBody Map<String, String> map,Model model ) throws IOException {
            //@RequestParam("username") String username, @RequestParam("password") String password, HttpServletResponse response,Model model

        System.out.println("The user is trying to sign in !");
        System.out.println("The map is "+map.toString());
        String username=map.get("username");
        System.out.println("The username is "+map.get("username"));
        String password=map.get("password");
        System.out.println("The password is "+map.get("password"));
        //判断前端用户名或密码是否为空
        if (username.equalsIgnoreCase("") || username == null
                || password.equalsIgnoreCase("") || password == null) {
            //System.out.println("进行登录校验阶段，校验失败 用户名或密码为空 回到登录页面");
            System.out.println("Login checking! The username or password is lacking!");
//            model.addAttribute("msg","用户名或密码为空 回到登录页面");
//            model.addAttribute("code",000);
            Message msg=new Message("用户名或密码为空 回到登录页面",000,null);
            return msg;
        } else {
            // 前端用户名和密码不为空 则根据用户名和密码调用 service 层中的方法进行查询，用户名和密码封装在account中
            //Account loginAccount = accountService.findAccountByUnameAndPwd(account);
            User user=new User(username,password);
            User loginUser=userService.findUserByUsernameAndPwd(user);


            // 判断查询的用户是否为空 null，如果是null，说明数据库不存在此用户
            if (loginUser == null) {
                //System.out.println("进行登录校验阶段，校验失败 不存在该用户");
                System.out.println("Login checking! The username does not exist!");

//                model.addAttribute("msg",);
//                model.addAttribute("code",100);
                Message msg=new Message("用户名或密码错误",100,null);
                return msg;
            } else {
                // 判断查询的用户不为空，说明数据库存在此用户，返回token
                //System.out.println("进行登录校验阶段，校验成功");
                System.out.println("Login checking! Succeed!");
                String token = JWTUtils.sign(""+loginUser.getId());


                Message msg = new Message("登录成功",200,token);
//               String  msgStr = JsonString(msg);
                //登陆成功进行页面跳转
                //response.sendRedirect("success");

//                return token;

                /*return "forward:/users/successPage";*/
                return msg;

                //System.out.println("登录成功");
                //return "forward:/users/select";
                // 进入和user信息相关的 controller 进行数据查询并显示
                // localhost:8080/users/select
                //return "froward:/users/select";
            }
        }
    }


    @RequestMapping("/register")
    @ResponseBody
    public Message  register(@RequestBody Map<String, String> map,Model model)throws IOException {
//            (HttpServletResponse response, @RequestParam("username") String username, @RequestParam("password")String password)
        System.out.println("The user is trying to register !");
        System.out.println("The map is "+map.toString());
        String username=map.get("username");
        System.out.println("The username is "+map.get("username"));
        String password=map.get("password");
        System.out.println("The password is "+map.get("password"));

        if (username.equalsIgnoreCase("") || username == null
                || password.equalsIgnoreCase("") || password == null) {
            //System.out.println("注册阶段，校验失败 用户名或密码为空 回到注册页面");
            System.out.println("Register checking! The username or password is lacking!");
//            model.addAttribute("msg","用户名或密码为空 回到登录页面");
//            model.addAttribute("code",000);
            Message msg=new Message("用户名或密码为空 回到登录页面",000,null);
            return msg;
        } else {
            boolean ifUsernameUsed=true;
            //判断该用户名是否被使用
            ifUsernameUsed=userService.findUserByUsername(username);

            if(ifUsernameUsed)
            {
                //System.out.println("注册阶段，检验失败 用户名重复");
                System.out.println("Register checking! The username has been used !");
                /*model.addAttribute("msg",);
                model.addAttribute("code",100);*/
                Message msg=new Message("用户名已被使用",100,null);
                return msg;

            }
            else {
                userService.insertUser(username,password);
                int id=userService.findUserIdMax();
                UserInformationService.insertUserInformation(id);
                UserMateSelectionService.insertUserMateSelection(id);

                String token = JWTUtils.sign(""+id);
                System.out.println("Register checking! Succeed !");
                //注册成功进行页面跳转
                //response.sendRedirect("success");
                //System.out.println("Login checking! Succeed!");
                Message msg=new Message("注册成功",200,token);
                return msg;
            }

        }


    }



//    @RequestMapping("/select")    public String findAllUsers(Model model) {
//        System.out.println("查询所有用户");
//        // 使用 service 层查询所有用户
//        List<User> users = userService.findAllUsers();
//        System.out.println(users);
//        model.addAttribute("users",users);
//        return "list";
//    }








}
