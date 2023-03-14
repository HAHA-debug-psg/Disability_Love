package com.controller;

import com.entities.Manager;
import com.entities.ManagerNews;
import com.entities.Message;
import com.entities.User;
import com.service.IManagerService;
import com.service.IUserService;
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
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/managers")
public class ManagerController {
    @Autowired
    IManagerService ManagerService;

    @Autowired
    IUserService userService;


//    /showALlNewsPage

    @RequestMapping("/showAllUsersPage")
    public String showALlUserPage(){
        //System.out.println("登录或者注册成功");
        return "manageUser";
    }



    /**
     * 登录接口 需要获取管理员用户名和密码 返回message包含消息 code 和token
     * @param map
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping(value="/login")
    @ResponseBody
    /**
     * 添加依赖 fastjson  gosjons
     * 创建对象 message ： code  msg  《T》data
     */
    public Message login(@RequestBody Map<String, String> map, Model model ) throws IOException {
        //@RequestParam("managername") String managername, @RequestParam("password") String password, HttpServletResponse response,Model model

        System.out.println("The manager is trying to sign in !");
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
            Manager manager=new Manager(username,password);
            Manager loginmanager=ManagerService.findManagerByUsernameAndPwd(manager);


            // 判断查询的用户是否为空 null，如果是null，说明数据库不存在此用户
            if (loginmanager == null) {
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
                String token = JWTUtils.sign(""+loginmanager.getId());


                Message msg = new Message("登录成功",200,token);
//               String  msgStr = JsonString(msg);
                //登陆成功进行页面跳转
                //response.sendRedirect("success");

//                return token;

                /*return "forward:/managers/successPage";*/
                return msg;

                //System.out.println("登录成功");
                //return "forward:/managers/select";
                // 进入和manager信息相关的 controller 进行数据查询并显示
                // localhost:8080/managers/select
                //return "froward:/managers/select";
            }
        }
    }


    @RequestMapping("/deleteUser")
    @ResponseBody
    public Message deleteUser(@RequestBody Map<String, String> map) {
        System.out.println("删除选定用户");
        int id=Integer.parseInt(map.get("id"));
        // 使用 service 层查询所有用户
        User users = userService.deleteUser(id);
        System.out.println("删除成功！");
        Message msg=new Message("删除成功",200,null);
        return msg;
    }

    @RequestMapping(value = "/showAllUsers")
    @ResponseBody
    public List<Map<String,Object>>  showAllUsers(HttpServletResponse response) throws IOException, ParseException {
//        String text = map.get("text");
//        String token = map.get("hl_token");
        List<Map<String,Object>>  users= userService.findUsersAll();
        return users;
//      return users;
//        int uid = Integer.parseInt(JWTUtils.getUserId(token));
//
//        int isInsert = managerNewsService.insertTrend(uid, text);
//        return Integer.toString(isInsert);
    }




}

