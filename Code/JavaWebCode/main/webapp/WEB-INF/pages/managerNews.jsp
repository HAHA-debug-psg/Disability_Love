<%--
  Created by IntelliJ IDEA.
  User: zhoumou
  Date: 2023/3/9
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!doctype html>
    <html>
    <head>
        <meta charset="utf-8">
        <title>荆棘里的向往--新闻公告管理</title>
        <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
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
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/managerNews/showALlNewsPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">平台新闻公告管理</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/managers/showAllUsersPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">平台用户管理</a></div>

    </div>
    <h1 style="font-weight: 900; font-family: '宋体';padding-top: 5px;padding-bottom: 1%; color: whitesmoke">新闻公告管理</h1>
<div style="width: 50%;margin: 0 auto">
    <div  style="margin: 20px;background-color: antiquewhite;padding:10px;border-radius: 20px;">

        <input name="content" id="content"
               style="width:95%;height:14%;border:0;border-radius: 10px;margin: 10px;font-size: 140%;text-indent:2em;"
               placeholder="编辑新闻公告" />
        <br></br>
        <button type="button" id="sub" class="btn size4 HONG" style="background-color:#743730">开始发布</button>
        <br></br>
    </div>
    <ol>
        <div id="app" style="height: 2000px">
        <li v-for="site in sites"
            style="margin: 20px;background-color: antiquewhite;padding:10px;border-radius: 20px;">

            <div style="font-size: 20px;font-family: '宋体';padding: 8px;text-indent:2em;text-align: left">{{ site.text }}</div>

            <div style="font-size: 20px;font-family: '宋体';padding: 8px;text-indent:2em;margin-left: -70%;">{{ site.n_date }}</div>
            <button type="button" @click="delete_news(site.n_id)" class="btn size4 HONG" style="background-color:#743730">删除</button>
        </li>
        </div>
    </ol>
</div>
</div>
</body>

</body>
<script>








    $.ajax({
        url: "/managerNews/showALlNews",
        type: "post",
        success: function(result) {
            console.log(result);
            new Vue({
                el: '#app',
                data: {
                    sites: result
                },
                methods:{
                    delete_news(n_id) {
                        $.ajax({
                            url: "/managerNews/delete",
                            type:"post",
                            contentType: 'application/json;charset=utf-8',
                            data: JSON.stringify({
                                "n_id":n_id
                                //"hl_token": window.localStorage.getItem("hl_token")
                                // 自己拿到token
                            }),
                            success: function() {
                                alert("删除成功！");
                                location.replace("/managerNews/showALlNewsPage");
                            }

                        })
                        //location.replace("/managerNews/showALlNewsPage");
                    }
                }


            })


        }
    });

    let sub = document.getElementById("sub");
    sub.addEventListener("click", function() {
        var date = new Date();
        var data = {
            "text": document.getElementById('content').value,
            //"hl_token": window.localStorage.getItem("hl_token"),
            "date":date.toISOString()
        };
        console.log(data);
        $.ajax({
                url: "/managerNews/insert",
                type: "post",
                contentType: 'application/json;charset=utf-8',
                data: JSON.stringify(data),
                success: function() {
                    alert("发布成功！");
                    location.replace("/managerNews/showALlNewsPage");
                }
            }
        )
    });

</script>
</html>
