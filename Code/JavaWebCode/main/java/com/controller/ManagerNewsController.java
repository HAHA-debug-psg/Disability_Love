package com.controller;

import com.entities.ManagerNews;
import com.service.IManagerNewsService;
import com.utils.JWTUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/managerNews")
public class ManagerNewsController {
    @Autowired
    IManagerNewsService ManagerNewsService;

    @RequestMapping("/showALlNewsPage")
    public String showALlNewsPage(){
        //System.out.println("登录或者注册成功");
        return "managerNews";
    }


    @RequestMapping("/showALlUserNewsPage")
    public String showALlUserNewsPage(){
        //System.out.println("登录或者注册成功");
        return "userNews";
    }
    /**
     * 管理员新增新闻
     * @param response
     * @param map
     * @return
     * @throws IOException
     * @throws ParseException
     */
    @RequestMapping(value = "/insert")
    @ResponseBody
    public String insert(HttpServletResponse response, @RequestBody Map<String, String> map) throws IOException, ParseException {

        System.out.println("Inserting a news");
        String text = map.get("text");
        String token = map.get("hl_token");

//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateString=map.get("date").replaceAll("/","-").substring(0, 10);
        System.out.println(map.get("date"));
        System.out.println(dateString);

//        Date date = sdf.parse(dateString);
        //System.out.println(date);

        //int m_id = Integer.parseInt(JWTUtils.getUserId(token));
        int isInsert = ManagerNewsService.insertManagerNews( text,dateString);
        return Integer.toString(isInsert);
    }


    @RequestMapping(value = "/showALlNews")
    @ResponseBody
    public List<ManagerNews> showAllNews(HttpServletResponse response) throws IOException, ParseException {

        List<ManagerNews> news=ManagerNewsService.findManagerNewsAll();
        return news;
    }


    @RequestMapping(value = "/delete")
    @ResponseBody
    public String delete(HttpServletResponse response, @RequestBody Map<String, String> map) throws IOException, ParseException {
        System.out.println("Delete  news!");
        int nid = Integer.parseInt(map.get("n_id"));
        //String token = map.get("hl_token");
        //int uid = Integer.parseInt(JWTUtils.getUserId(token));

        int ifDelete = ManagerNewsService.deleteManagerNews(nid);
        return Integer.toString(ifDelete);
    }



}