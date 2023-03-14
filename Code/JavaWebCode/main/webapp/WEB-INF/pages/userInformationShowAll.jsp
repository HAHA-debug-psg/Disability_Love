<%--
  Created by IntelliJ IDEA.
  User: zhoumou
  Date: 2023/3/9
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>荆棘里的向往--大伙的信息</title>
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>

    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>
    <link href="https://www.biyiai.com/res/p/css/p.css?1677995438" rel="stylesheet" type="text/css" />
    <link href="https://www.biyiai.com/res/p/css/my.css?1677995438" rel="stylesheet" type="text/css" />
    <link href="https://www.biyiai.com/res/p/css/my_info.css?1677995438" rel="stylesheet" type="text/css" />
    <script src="https://www.biyiai.com/res/www_zeai_cn.js?1677995438"></script>
    <script src="https://www.biyiai.com/res/p/js/p.js?1677995438"></script>
    <script src="https://www.biyiai.com/cache/udata.js?1677995438"></script>
    <script src="https://www.biyiai.com/cache/areadata.js?1677995438"></script>
    <script src="https://www.biyiai.com/res/select4.js?1677995438"></script>
    <script src="https://www.biyiai.com/res/p/js/date_input.js?1677995438"></script>

    <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="../../js/jquery-3.6.0.js"></script>


</head>
<body>
<div style="background: url(../../image/coverd.png) ">
    <div class="subNav" style="position:fixed;top:0;background-color: antiquewhite;width:100%;z-index: 999;height:45px;opacity: 0.4;display: flex;">
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="http://localhost:8080" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">首页</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userInformation/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">个人信息</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/useMateSelection/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">择偶信息</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userInformation/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">大伙的个人信息</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userTrend/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">个人动态</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userTrend/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">大伙的动态</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/managerNews/showALlUserNewsPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">平台新闻公告</a></div>
    </div>
    <h1 style="font-weight: 900; font-family: '宋体';padding-top: 5px;padding-bottom: 1%; color: whitesmoke">大伙的个人信息</h1>
<div style="width: 50%;margin: 0 auto;height: 2000px">
    <div id="app">
        <ol>
            <li v-for="(item,index) in sites"  style="margin: 20px;background-color: antiquewhite;padding:10px;border-radius: 20px;">
                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">名字：{{sites[index].uname}}</div>
                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">年龄：{{sites[index].age}}</div>
                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">身高：{{sites[index].height}}</div>
                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">体重：{{sites[index].weight}}</div>

                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">住址：{{sites[index].address}}</div>
<%--                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">学历：{{sites[index].education_background}}</div>--%>
<%--                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">残疾类型：{{sites[index].disability}}</div>--%>
<%--                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">工作：{{sites[index].job}}</div>--%>
                <div style="font-size: 20px;font-family: '宋体';padding: 10px;">爱情宣言：{{sites[index].introduction}}</div>

            </li>
        </ol>
    </div>
</div>

</div>
</body>
<script>
    $.ajax({
        url: "/userInformation/showAll",
        type: "post",
        success: function(result) {
            new Vue({
                el: '#app',
                data: {
                    sites: result
                }
            })


        }
    })

</script>
</html>
