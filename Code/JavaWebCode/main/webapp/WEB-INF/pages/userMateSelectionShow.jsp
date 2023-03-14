<%--
  Created by IntelliJ IDEA.
  User: zhoumou
  Date: 2023/3/9
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>荆棘里的向往--大伙的择偶信息</title>
    <link href="https://www.biyiai.com/res/p/css/p.css?1677995438" rel="stylesheet" type="text/css" />
    <link href="https://www.biyiai.com/res/p/css/my.css?1677995438" rel="stylesheet" type="text/css" />
    <link href="https://www.biyiai.com/res/p/css/my_info.css?1677995438" rel="stylesheet" type="text/css" />
    <script src="https://www.biyiai.com/res/www_zeai_cn.js?1677995438"></script>
    <script src="https://www.biyiai.com/res/p/js/p.js?1677995438"></script>
    <script src="../../js/udata.js"></script>
    <script src="https://www.biyiai.com/cache/areadata.js?1677995438"></script>
    <script src="https://www.biyiai.com/res/select4.js?1677995438"></script>
    <script src="https://www.biyiai.com/res/p/js/date_input.js?1677995438"></script>
    <script src="../../js/jquery-3.6.0.js"></script>
</head>
<body>

<div style="background: url(../../image/coverd.png) ;height: 2000px">
    <div class="subNav" style="position:fixed;top:0;background-color: antiquewhite;width:100%;z-index: 999;height:45px;opacity: 0.4;display: flex;">
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="http://localhost:8080" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">首页</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userInformation/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">个人信息</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/useMateSelection/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">择偶信息</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userInformation/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">大伙的个人信息</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userTrend/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">个人动态</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userTrend/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">大伙的动态</a></div>
        <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/managerNews/showALlUserNewsPageNewsPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">平台新闻公告</a></div>
    </div>
    <h1 style="font-weight: 900; font-family: '宋体';padding-top: 5px;padding-bottom: 1%; color: whitesmoke">择偶信息</h1>
<div class="zeai_my_box myRM" style="width:65%;background-color: white;margin: 0 auto;">

    <form style="margin: 0 auto;">
        <div class="myRC">
            <dl></dl>
            <dl></dl>
            <dl></dl>

            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 婚姻状态
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'love', '0', '');
                    </script>
                </dd>
            </dl>

            <dl>

                <dt>
                    <font class="Cf00 S16">*</font> 地址
                </dt>
                <dd>
                    <script>
                        LevelMenu4('a1|a2|a3|a4|请选择||||',' class="SW SW_area"');
                    </script>
                </dd>
            </dl>

            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 年龄上限
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'age', '0', '');
                    </script>
                </dd>
            </dl>

            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 年龄下限
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'ages', '0', '');
                    </script>
                </dd>
            </dl>




            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 身高上限
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'heigh', '0', '');
                    </script>
                </dd>
            </dl>
            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 身高下限
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'heighs', '0', '');
                    </script>
                </dd>
            </dl>

            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 体重上限

                    <input name="hl_token" id="hl_token" type="hidden" value=${hl_token} />
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'weigh','0', '');
                    </script>
                </dd>
            </dl>
            <dl>
                <dt>
                    <font class="Cf00 S16">*</font> 体重下限
                </dt>
                <dd>
                    <script>
                        zeai_cn__CreateFormItem('select', 'weighs','0', '');
                    </script>
                </dd>
            </dl>


            <dl>
                <dt>&nbsp;</dt>
                <dd>
                    <button type="button" id="sub"
                            style="width: 100%; height: 50px;  color: #fff;  font-size: 16px;  border: 0 none;text-align: center;line-height: 50px;background-color:#743730;border-radius: 3px">提交</button>
                </dd>
            </dl>
        </div>
    </form>
</div>
</div>
</body>
<script>


    let sub = document.getElementById("sub");
    sub.addEventListener("click", function() {
        var data = {
            "expect_marital_status": document.getElementById('love').value,
            "expect_address_province_code": document.getElementById('a1').value,
            "expect_address_city_code": document.getElementById('a2').value,
            "expect_address_county_code": document.getElementById('a3').value,
            "expect_address_detail_code": document.getElementById('a4').value,
            // "expect_address": document.getElementById('areatitle').value,
            "expect_age_min": document.getElementById('age').value,
            "expect_age_max": document.getElementById('ages').value,
            "expect_height_min": document.getElementById('heigh').value,
            "expect_height_max": document.getElementById('heighs').value,
            "expect_weight_min": document.getElementById('weigh').value,
            "expect_weight_max": document.getElementById('weighs').value,
            "hl_token": window.localStorage.getItem("hl_token")
        };
        console.log(data);
        $.ajax({
                url: "/useMateSelection/update",
                type: "post",
                contentType: 'application/json;charset=utf-8',
                data: JSON.stringify(data),
                success: function() {
                    alert("更新成功！");
                },
                error: function() {
                alert("更新失败！");
                }
            }
        )
    });
</script>
</html>

