<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="content-type" content="text/html; charset=UTF-8">--%>
<%--    <title>首页-爱玛商城</title>--%>
<%--    <script src="/js/jquery-1.11.3.min.js" type="text/javascript"></script>--%>
<%--    <link rel="stylesheet" href="/css/mr-01.css" type="text/css">--%>
<%--    <script src="/js/jsArr01.js" type="text/javascript"></script>--%>
<%--    <script src="/js/module.js" type="text/javascript"></script>--%>
<%--    <script src="/js/jsArr02.js" type="text/javascript"></script>--%>
<%--    <script src="/js/tab.js" type="text/javascript"></script>--%>

<%--</head>--%>
<%--<body>--%>

<%--<div id="toolbar" style="background-color: #F0F0F0; width: 100%;">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="toolbar-ct-1" style="font-size: 20px;">--%>
<%--                <p>--%>
<%--                    <a href="/users/loginPage" style="color: chocolate;">登录</a>&nbsp; ｜ &nbsp;--%>
<%--                    <a href="/register" style="color: chocolate;">注册</a>--%>

<%--                </p>--%>
<%--            </div>--%>
<%--            <div class="toolbar-ct-2" style="font-size: 20px;">--%>
<%--                <a href="#" style="color: chocolate; ">我的订单</a>&nbsp;&nbsp;--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div style="background-color: white; width: 100%">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="toolbar-ct col-xs-12 col-md-6  hidden-sm hidden-xs">--%>
<%--                    <div class="toolbar-ct-1">--%>
<%--                        <img src="./images/mylogo.png" width="144px" height="75px">--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <!-- 搜索条 -->--%>
<%--                        <div class="search_box">--%>
<%--                            <div class="top-nav-search">--%>
<%--                                <form method="post" id="myform" onsubmit="return checkSearch()" action="searchServlet">--%>
<%--                                    <input type="text" name="searchword" size="38" id="search"--%>
<%--                                           style="border: 0px;" class="top-nav-search-input"--%>
<%--                                           placeholder="请输入内容"/>--%>
<%--                                    <input type="image" src="images/search.png" class="search_box_img"/>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- //搜索条 -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="toolbar-ct toolbar-ct-right col-xs-12 col-md-3">--%>
<%--                    <div class="toolbar-ct-2 "--%>
<%--                         style="margin-top: 35px; border: 1px solid #EAEAEA; padding: 5px;">--%>
<%--                        <a href="#" style="color: #E33737; font-size: 20px;"><i class="fa fa-cart1"></i>--%>
<%--                            我的购物车</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- 网站头部 -->--%>
<%--<header id="mr-header" class="wrap mr-header">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <!-- //网站Logo -->--%>
<%--            <!-- 主导航条 -->--%>
<%--            <nav id="mr-mainnav"--%>
<%--                 class="col-xs-12 col-md-6 mr-mainnav navbar navbar-default">--%>
<%--                <div class="mr-navbar navbar-collapse collapse">--%>
<%--                    <div class="mr-megamenu animate slide" data-duration="400"--%>
<%--                         data-responsive="true">--%>
<%--                        <ul class="nav navbar-nav level0">--%>
<%--                            <li><a href="/index.jsp">首页 </a></li>--%>
<%--                        </ul>--%>
<%--                        <ul id="category" class="nav navbar-nav level0">--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </nav>--%>
<%--            <!-- //主导航条 -->--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</header>--%>
<%--<!-- //网站头部 -->--%>
<%--<!-- 轮播广告及热门商品 -->--%>
<%--<div class="container mr-sl mr-sl-1">--%>
<%--    <div class="mr-spotlight mr-spotlight-1  row">--%>
<%--        <!-- 显示轮播广告 -->--%>
<%--        <div class=" col-lg-9 col-md-12  col-sm-3 hidden-sm   col-xs-6 hidden-xs ">--%>
<%--            <a href="#" class="nivo-imageLink" style="display: block;">--%>
<%--                <img src="/images/img1.png" class="img-responsive">--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <!-- 显示热门商品 -->--%>
<%--        <div class="col-lg-3  col-md-6 hidden-md   col-sm-3 hidden-sm   col-xs-6 hidden-xs ">--%>
<%--            <div class="mr-module module highlight " id="Mod160">--%>
<%--                <div class="module-inner">--%>
<%--                    <h3 class="module-title ">--%>
<%--                        <span>热门商品</span>--%>
<%--                    </h3>--%>
<%--                    <div class="module-ct">--%>
<%--                        <div class="mijoshop">--%>
<%--                            <div class="container_oc">--%>
<%--                                <div class="box_oc">--%>
<%--                                    <!-- 循环显示热门商品 ：添加两条商品信息-->--%>
<%--                                    <div class="box-product product-grid">--%>
<%--                                        <div>--%>
<%--                                            <div class="image">--%>
<%--                                                <a href="#?pid=32">--%>
<%--                                                    <img src="/goods/1.jpg" width="250px"></a>--%>
<%--                                            </div>--%>
<%--                                            <div class="name">--%>
<%--                                                <a href="#?pid=32">开启商业与未来秘密</a>--%>
<%--                                            </div>--%>
<%--                                            <!-- 星级评分条 -->--%>
<%--                                            <div class="rating">--%>
<%--														<span class="fa fa-stack"><i--%>
<%--                                                                class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                                class="fa fa-star-o fa-stack-2x"></i> </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span>--%>
<%--                                            </div>--%>
<%--                                            <!-- // 星级评分条 -->--%>
<%--                                            <!-- 商品价格 -->--%>
<%--                                            <div class="price">--%>
<%--														<span class="price-new">价格：35 元--%>
<%--														</span>--%>
<%--                                            </div>--%>
<%--                                            <!-- // 商品价格 -->--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="box-product product-grid">--%>
<%--                                        <div>--%>
<%--                                            <div class="image">--%>
<%--                                                <a href="#?pid=33"> <img src="/goods/2.jpg" width="250px"></a>--%>
<%--                                                </a>--%>
<%--                                            </div>--%>
<%--                                            <div class="name">--%>
<%--                                                <a href="#?pid=33">商海悟道</a>--%>
<%--                                            </div>--%>
<%--                                            <!-- 星级评分条 -->--%>
<%--                                            <div class="rating">--%>
<%--														<span class="fa fa-stack">--%>
<%--                                                            <i class="fa fa-star fa-stack-2x"></i>--%>
<%--                                                            <i class="fa fa-star-o fa-stack-2x"></i>--%>
<%--                                                        </span> <span--%>
<%--                                                    class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i>--%>
<%--                                            </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span> <span--%>
<%--                                                    class="fa fa-stack"><i--%>
<%--                                                    class="fa fa-star fa-stack-2x"></i><i--%>
<%--                                                    class="fa fa-star-o fa-stack-2x"></i> </span>--%>
<%--                                            </div>--%>
<%--                                            <!-- // 星级评分条 -->--%>
<%--                                            <!-- 商品价格 -->--%>
<%--                                            <div class="price">--%>
<%--														<span class="price-new">价格：38 元--%>
<%--														</span>--%>
<%--                                            </div>--%>
<%--                                            <!-- // 商品价格 -->--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- // 循环显示热门商品 ：添加两条商品信息-->--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- // 显示热门商品 -->--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!-- //轮播广告及热门商品  -->--%>
<%--<!-- 最新上架及打折商品展示 -->--%>
<%--<nav class="container mr-masstop  hidden-sm hidden-xs">--%>
<%--    <div class="custom">--%>
<%--        <div>--%>
<%--            <div class="ja-tabswrap default" style="width: 100%;">--%>
<%--                <div id="myTab" class="container">--%>

<%--                    <h3 class="index_h3">--%>
<%--                        <span class="index_title">最新上架</span>--%>
<%--                    </h3>--%>
<%--                    <!-- //最新上架选项卡 -->--%>
<%--                    <div class="ja-tab-content ja-tab-content col-6 active"--%>
<%--                         style="opacity: 1; width: 100%; visibility: visible;">--%>
<%--                        <div class="ja-tab-subcontent">--%>
<%--                            <div class="mijoshop">--%>
<%--                                <div class="container_oc">--%>
<%--                                    <div class="row">--%>
<%--                                        <!-- 循环显示最新上架商品 ：添加12条商品信息-->--%>
<%--                                        <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                            <div class="product-thumb transition">--%>
<%--                                                <div class="actions">--%>
<%--                                                    <div class="image">--%>
<%--                                                        <a href="#?pid=48">--%>
<%--                                                            <img src="/goods/3.jpg" alt="asus/华硕 G11"--%>
<%--                                                                 class="img-responsive" width="200px" height="200px">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="button-group">--%>
<%--                                                        <div class="cart">--%>
<%--                                                            <button class="btn btn-primary btn-primary"--%>
<%--                                                                    type="button" data-toggle="tooltip"--%>
<%--                                                                    onclick='javascript:window.location.href="addCartServlet?pid=48"; '--%>
<%--                                                                    style="display: none; width: 33.3333%;"--%>
<%--                                                                    data-original-title="加入到购物车">--%>
<%--                                                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="caption">--%>
<%--                                                    <div class="name" style="height: 40px">--%>
<%--                                                        <a href="#?pid=48"> <span--%>
<%--                                                                style="color: #0885B1">商品名：</span> 华硕 G11--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="name" style="margin-top: 10px">--%>
<%--                                                        <p class="price">价格：6888元</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                            <div class="product-thumb transition">--%>
<%--                                                <div class="actions">--%>
<%--                                                    <div class="image">--%>
<%--                                                        <a href="#?pid=48">--%>
<%--                                                            <img src="/goods/4.jpg" alt="asus/华硕 G12"--%>
<%--                                                                 class="img-responsive" width="200px" height="200px">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="button-group">--%>
<%--                                                        <div class="cart">--%>
<%--                                                            <button class="btn btn-primary btn-primary"--%>
<%--                                                                    type="button" data-toggle="tooltip"--%>
<%--                                                                    onclick='javascript:window.location.href="addCartServlet?pid=49"; '--%>
<%--                                                                    style="display: none; width: 33.3333%;"--%>
<%--                                                                    data-original-title="加入到购物车">--%>
<%--                                                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="caption">--%>
<%--                                                    <div class="name" style="height: 40px">--%>
<%--                                                        <a href="#?pid=49"> <span--%>
<%--                                                                style="color: #0885B1">商品名：</span> 华硕 G12--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="name" style="margin-top: 10px">--%>
<%--                                                        <p class="price">价格：7600 元</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                            <div class="product-thumb transition">--%>
<%--                                                <div class="actions">--%>
<%--                                                    <div class="image">--%>
<%--                                                        <a href="#?pid=48">--%>
<%--                                                            <img src="/goods/3.jpg" alt="asus/华硕 G11"--%>
<%--                                                                 class="img-responsive" width="200px" height="200px">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="button-group">--%>
<%--                                                        <div class="cart">--%>
<%--                                                            <button class="btn btn-primary btn-primary"--%>
<%--                                                                    type="button" data-toggle="tooltip"--%>
<%--                                                                    onclick='javascript:window.location.href="addCartServlet?pid=48"; '--%>
<%--                                                                    style="display: none; width: 33.3333%;"--%>
<%--                                                                    data-original-title="加入到购物车">--%>
<%--                                                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="caption">--%>
<%--                                                    <div class="name" style="height: 40px">--%>
<%--                                                        <a href="#?pid=48"> <span--%>
<%--                                                                style="color: #0885B1">商品名：</span> 华硕 G11--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="name" style="margin-top: 10px">--%>
<%--                                                        <p class="price">价格：6888元</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                            <div class="product-thumb transition">--%>
<%--                                                <div class="actions">--%>
<%--                                                    <div class="image">--%>
<%--                                                        <a href="#?pid=48">--%>
<%--                                                            <img src="/goods/4.jpg" alt="asus/华硕 G12"--%>
<%--                                                                 class="img-responsive" width="200px" height="200px">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="button-group">--%>
<%--                                                        <div class="cart">--%>
<%--                                                            <button class="btn btn-primary btn-primary"--%>
<%--                                                                    type="button" data-toggle="tooltip"--%>
<%--                                                                    onclick='javascript:window.location.href="addCartServlet?pid=49"; '--%>
<%--                                                                    style="display: none; width: 33.3333%;"--%>
<%--                                                                    data-original-title="加入到购物车">--%>
<%--                                                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="caption">--%>
<%--                                                    <div class="name" style="height: 40px">--%>
<%--                                                        <a href="#?pid=49"> <span--%>
<%--                                                                style="color: #0885B1">商品名：</span> 华硕 G12--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="name" style="margin-top: 10px">--%>
<%--                                                        <p class="price">价格：7600 元</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                            <div class="product-thumb transition">--%>
<%--                                                <div class="actions">--%>
<%--                                                    <div class="image">--%>
<%--                                                        <a href="#?pid=48">--%>
<%--                                                            <img src="/goods/3.jpg" alt="asus/华硕 G11"--%>
<%--                                                                 class="img-responsive" width="200px" height="200px">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="button-group">--%>
<%--                                                        <div class="cart">--%>
<%--                                                            <button class="btn btn-primary btn-primary"--%>
<%--                                                                    type="button" data-toggle="tooltip"--%>
<%--                                                                    onclick='javascript:window.location.href="addCartServlet?pid=48"; '--%>
<%--                                                                    style="display: none; width: 33.3333%;"--%>
<%--                                                                    data-original-title="加入到购物车">--%>
<%--                                                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="caption">--%>
<%--                                                    <div class="name" style="height: 40px">--%>
<%--                                                        <a href="#?pid=48"> <span--%>
<%--                                                                style="color: #0885B1">商品名：</span> 华硕 G11--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="name" style="margin-top: 10px">--%>
<%--                                                        <p class="price">价格：6888元</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                            <div class="product-thumb transition">--%>
<%--                                                <div class="actions">--%>
<%--                                                    <div class="image">--%>
<%--                                                        <a href="#?pid=48">--%>
<%--                                                            <img src="/goods/4.jpg" alt="asus/华硕 G12"--%>
<%--                                                                 class="img-responsive" width="200px" height="200px">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="button-group">--%>
<%--                                                        <div class="cart">--%>
<%--                                                            <button class="btn btn-primary btn-primary"--%>
<%--                                                                    type="button" data-toggle="tooltip"--%>
<%--                                                                    onclick='javascript:window.location.href="addCartServlet?pid=49"; '--%>
<%--                                                                    style="display: none; width: 33.3333%;"--%>
<%--                                                                    data-original-title="加入到购物车">--%>
<%--                                                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="caption">--%>
<%--                                                    <div class="name" style="height: 40px">--%>
<%--                                                        <a href="#?pid=49"> <span--%>
<%--                                                                style="color: #0885B1">商品名：</span> 华硕 G12--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="name" style="margin-top: 10px">--%>
<%--                                                        <p class="price">价格：7600 元</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                        <!-- //循环显示最新上架商品：添加12条商品信息 -->--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- //最新上架选项卡 -->--%>
<%--                    <h3 class="index_h3">--%>
<%--                        <span class="index_title">历史浏览记录</span>--%>
<%--                    </h3>--%>
<%--                    <div class="ja-tab-subcontent">--%>
<%--                        <div class="mijoshop">--%>
<%--                            <div class="container_oc">--%>
<%--                                <div class="row">--%>
<%--                                    <!-- 循环显示打折商品 ：添加12条商品信息-->--%>
<%--                                    <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                        <div class="product-thumb transition">--%>
<%--                                            <div class="actions">--%>
<%--                                                <div class="image">--%>
<%--                                                    <a href="#?pid=01"><img--%>
<%--                                                            src="/products/c_0001.jpg"--%>
<%--                                                            class="img-responsive"> </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="button-group">--%>
<%--                                                    <div class="cart">--%>
<%--                                                        <button class="btn btn-primary btn-primary" type="button"--%>
<%--                                                                data-toggle="tooltip"--%>
<%--                                                                onclick='javascript:window.location.href="addCartServlet?pid=01"; '--%>
<%--                                                                style="display: none; width: 33.3333%;"--%>
<%--                                                                data-original-title="加入到购物车">--%>
<%--                                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="caption">--%>
<%--                                                <div class="name" style="height: 40px">--%>
<%--                                                    <a href="#?pid=01"--%>
<%--                                                       style="width: 95%"> <span--%>
<%--                                                            style="color: #0885B1">商品名：</span>小米--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="name" style="margin-top: 10px">--%>
<%--                                                    <span class="price"> 现价：3200 元</span><br>--%>
<%--                                                    <span--%>
<%--                                                            class="oldprice">原价：4600元</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                        <div class="product-thumb transition">--%>
<%--                                            <div class="actions">--%>
<%--                                                <div class="image">--%>
<%--                                                    <a href="#?pid=01"><img--%>
<%--                                                            src="/products/c_0001.jpg"--%>
<%--                                                            class="img-responsive"> </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="button-group">--%>
<%--                                                    <div class="cart">--%>
<%--                                                        <button class="btn btn-primary btn-primary" type="button"--%>
<%--                                                                data-toggle="tooltip"--%>
<%--                                                                onclick='javascript:window.location.href="addCartServlet?pid=01"; '--%>
<%--                                                                style="display: none; width: 33.3333%;"--%>
<%--                                                                data-original-title="加入到购物车">--%>
<%--                                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="caption">--%>
<%--                                                <div class="name" style="height: 40px">--%>
<%--                                                    <a href="#?pid=01"--%>
<%--                                                       style="width: 95%"> <span--%>
<%--                                                            style="color: #0885B1">商品名：</span>小米--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="name" style="margin-top: 10px">--%>
<%--                                                    <span class="price"> 现价：3200 元</span><br>--%>
<%--                                                    <span--%>
<%--                                                            class="oldprice">原价：4600元</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                        <div class="product-thumb transition">--%>
<%--                                            <div class="actions">--%>
<%--                                                <div class="image">--%>
<%--                                                    <a href="#?pid=01"><img--%>
<%--                                                            src="/products/c_0001.jpg"--%>
<%--                                                            class="img-responsive"> </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="button-group">--%>
<%--                                                    <div class="cart">--%>
<%--                                                        <button class="btn btn-primary btn-primary" type="button"--%>
<%--                                                                data-toggle="tooltip"--%>
<%--                                                                onclick='javascript:window.location.href="addCartServlet?pid=01"; '--%>
<%--                                                                style="display: none; width: 33.3333%;"--%>
<%--                                                                data-original-title="加入到购物车">--%>
<%--                                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="caption">--%>
<%--                                                <div class="name" style="height: 40px">--%>
<%--                                                    <a href="#?pid=01"--%>
<%--                                                       style="width: 95%"> <span--%>
<%--                                                            style="color: #0885B1">商品名：</span>小米--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="name" style="margin-top: 10px">--%>
<%--                                                    <span class="price"> 现价：3200 元</span><br>--%>
<%--                                                    <span--%>
<%--                                                            class="oldprice">原价：4600元</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                        <div class="product-thumb transition">--%>
<%--                                            <div class="actions">--%>
<%--                                                <div class="image">--%>
<%--                                                    <a href="#?pid=01"><img--%>
<%--                                                            src="/products/c_0001.jpg"--%>
<%--                                                            class="img-responsive"> </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="button-group">--%>
<%--                                                    <div class="cart">--%>
<%--                                                        <button class="btn btn-primary btn-primary" type="button"--%>
<%--                                                                data-toggle="tooltip"--%>
<%--                                                                onclick='javascript:window.location.href="addCartServlet?pid=01"; '--%>
<%--                                                                style="display: none; width: 33.3333%;"--%>
<%--                                                                data-original-title="加入到购物车">--%>
<%--                                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="caption">--%>
<%--                                                <div class="name" style="height: 40px">--%>
<%--                                                    <a href="#?pid=01"--%>
<%--                                                       style="width: 95%"> <span--%>
<%--                                                            style="color: #0885B1">商品名：</span>小米--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="name" style="margin-top: 10px">--%>
<%--                                                    <span class="price"> 现价：3200 元</span><br>--%>
<%--                                                    <span--%>
<%--                                                            class="oldprice">原价：4600元</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                        <div class="product-thumb transition">--%>
<%--                                            <div class="actions">--%>
<%--                                                <div class="image">--%>
<%--                                                    <a href="#?pid=01"><img--%>
<%--                                                            src="/products/c_0001.jpg"--%>
<%--                                                            class="img-responsive"> </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="button-group">--%>
<%--                                                    <div class="cart">--%>
<%--                                                        <button class="btn btn-primary btn-primary" type="button"--%>
<%--                                                                data-toggle="tooltip"--%>
<%--                                                                onclick='javascript:window.location.href="addCartServlet?pid=01"; '--%>
<%--                                                                style="display: none; width: 33.3333%;"--%>
<%--                                                                data-original-title="加入到购物车">--%>
<%--                                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="caption">--%>
<%--                                                <div class="name" style="height: 40px">--%>
<%--                                                    <a href="#?pid=01"--%>
<%--                                                       style="width: 95%"> <span--%>
<%--                                                            style="color: #0885B1">商品名：</span>小米--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="name" style="margin-top: 10px">--%>
<%--                                                    <span class="price"> 现价：3200 元</span><br>--%>
<%--                                                    <span--%>
<%--                                                            class="oldprice">原价：4600元</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">--%>
<%--                                        <div class="product-thumb transition">--%>
<%--                                            <div class="actions">--%>
<%--                                                <div class="image">--%>
<%--                                                    <a href="#?pid=01"><img--%>
<%--                                                            src="/products/c_0001.jpg"--%>
<%--                                                            class="img-responsive"> </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="button-group">--%>
<%--                                                    <div class="cart">--%>
<%--                                                        <button class="btn btn-primary btn-primary" type="button"--%>
<%--                                                                data-toggle="tooltip"--%>
<%--                                                                onclick='javascript:window.location.href="addCartServlet?pid=01"; '--%>
<%--                                                                style="display: none; width: 33.3333%;"--%>
<%--                                                                data-original-title="加入到购物车">--%>
<%--                                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="caption">--%>
<%--                                                <div class="name" style="height: 40px">--%>
<%--                                                    <a href="#?pid=01"--%>
<%--                                                       style="width: 95%"> <span--%>
<%--                                                            style="color: #0885B1">商品名：</span>小米--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                                <div class="name" style="margin-top: 10px">--%>
<%--                                                    <span class="price"> 现价：3200 元</span><br>--%>
<%--                                                    <span--%>
<%--                                                            class="oldprice">原价：4600元</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- //打折商品 选项卡-->--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<!-- //最新上架及打折商品展示 -->--%>
<%--<!-- 版权栏 -->--%>
<%--<footer id="mr-footer" class="wrap mr-footer">--%>
<%--    <section class="mr-copyright">--%>
<%--        <div class="container">--%>
<%--            <div style="width:auto; height:auto; margin:auto;">--%>
<%--                <small> Copyright@夏善柱 2023 &copy;&nbsp;--%>
<%--                </small>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
<%--</footer>--%>
<%--<!-- //版权栏 -->--%>
<%--</body>--%>
<%--<script>--%>
<%--    function checkSearch() {--%>
<%--        var val = document.getElementById("search").value;--%>
<%--        val = val.trim();--%>
<%--        if (val == null || val == "") {--%>
<%--            alert("请输入搜索内容！");--%>
<%--            return false;--%>
<%--        }--%>
<%--        return true;--%>
<%--    }--%>
<%--</script>--%>
<%--<script>--%>
<%--    function logout() {--%>
<%--        if (confirm("确定退出登录?")) {--%>
<%--            window.location.href = "logoutServlet";--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
<%--</html>--%>


<%--
  Created by IntelliJ IDEA.
  User: zhoumou
  Date: 2023/3/6
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%--第一网页--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>

<%--<head>--%>
<%--    <script src="../../js/jquery-3.6.0.js"></script>--%>
<%--    <title>Title</title>--%>
<%--    <script>--%>
<%--        console.log(window.localStorage.getItem("hl_token"));--%>
<%--        $("#hl_token").val(window.localStorage.getItem("hl_token"));--%>
<%--    </script>--%>
<%--</head>--%>
<%--<body>--%>


<%--<div>test</div>--%>
<%--<form action="${pageContext.request.contextPath}/users/successPage">--%>
<%--    <input type="hidden" id="hl_token" name="hl_token" value="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJleHAiOjE2NzgwODkxMTR9.FG2UUJKe-wgcyMPPXQowP8dUlWRGokj9QGal8jgoyfo"/>--%>
<%--    <input type="submit" />--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>


<%--第二网页--%>


<%--第三网页--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="rg_layout">--%>
<%--    <div class="rg_left">--%>
<%--        <p>新用户注册页面</p>--%>
<%--    </div>--%>
<%--    <div class="rg_center" id="app">--%>
<%--        <div class="rg_form">--%>
<%--            &lt;%&ndash;文件上传表单要设置  enctype="multipart/form-data"&ndash;%&gt;--%>
<%--            <form action="${pageContext.request.contextPath}/picTest/insertPic" method="post" enctype="multipart/form-data">--%>
<%--                <table>--%>
<%--                    <tr>--%>
<%--                        &lt;%&ndash;这里的name应该与方法中保存文件的参数名称一致，spring MVC才能自动传入&ndash;%&gt;--%>
<%--                        <td class="td_left">头像 </td>--%>
<%--                        <td class="td_right"><input type="file" name="img"> </td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td colspan="2" align="center">--%>
<%--                            <input type="submit" value="注册" id="btn_sub" >--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </table>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>



<%--第四网页--%>
<%--
  Created by IntelliJ IDEA.
  User: zhoumou
  Date: 2023/3/8
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>

<%--第五网页--%>





<%--第六网页--动态--%>





<%--新闻页面--%>





<%--真正首页--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>荆棘里的向往</title>
    <link rel="stylesheet" href="/css/index.css">
    <script src="/js/echarts.js"></script>
    <script src="/js/china.js"></script>
    <script src="/js/jquery-3.6.0.js"></script>
</head>
<body>
<div class="subNav" style="position:fixed;top:0;background-color: antiquewhite;width:100%;z-index: 999;height:45px;opacity: 0.4;display: flex;">
    <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="#part1" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">引言</a></div>
    <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="#part2" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">相遇之路</a></div>
    <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="#part3" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">婚姻殿堂</a></div>
    <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="#part4" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">回到独身</a></div>
    <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="#part5" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">结尾</a></div>
    <div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/users/loginPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">登录</a></div>
<%--    <div style="width:5%;top:45px;text-align: center;line-height: 45px;margin-left:2%"><a href="/userInformation/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">个人信息</a></div>--%>
<%--    <div style="width:5%;top:45px;text-align: center;line-height: 45px;margin-left:2%"><a href="/userInformation/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">大伙的个人信息</a></div>--%>
<%--    <div style="width:5%;top:45px;text-align: center;line-height: 45px;margin-left:2%"><a href="/userTrend/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">个人动态</a></div>--%>
<%--    <div style="width:5%;top:45px;text-align: center;line-height: 45px;margin-left:2%"><a href="/userTrend/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">大伙的动态</a></div>--%>
<%--    <div style="width:5%;top:45px;text-align: center;line-height: 45px;margin-left:2%"><a href="/managerNews/showALlNewsPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">平台新闻公告管理</a></div>--%>
<%--    <div style="width:5%;top:45px;text-align: center;line-height: 45px;margin-left:2%"><a href="/managers/showAllUsersPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;">平台用户管理</a></div>--%>
</div>

<div class="back"></div>
<img class="backs"></div>
<div class="section-1" style="overflow: hidden;text-align: center;background-color: rgba(119,61,57,1);">
    <a name="part1"></a>
    <img src="image/余秀华.jpg" style="position:relative; width:50%;top:70px;left:-5%;margin-bottom: 60px;">
    <img src="image/reyi.png" class="section-1-r" style="position:relative;opacity: 0;top:-90px;width:40%;background-color: antiquewhite;">
    <div style="height: 120px;"></div>
    <p>从2009年起，余秀华正式开始写诗，而“爱情”是她诗歌中常见的主题。</p><p>关于<b>爱的躁动与呼唤、幻灭和实现……</b></p>
    <p>2017年，在《朗读者》的节目中，董卿问余秀华：“你为什么写那么多关于爱的诗啊？”</p>
    <p>她笑了一笑，毫不避讳道：<p>“缺什么，补什么。这可能是上天从我的生命里拿走的不会归还的一部分。”</p>
    <div class="poem" style="height: 1200px;overflow: hidden;margin-top: 50px;">
        <img src="image/poem1.jpg" class="poem-1" style="width: 30%;opacity: 0;display: block;margin-left:40%;">
        <img src="image/poem2.jpg" class="poem-2" style="width: 30%;opacity: 0;display: block;margin-left:35%;">
        <img src="image/poem3.jpg" class="poem-3" style="width: 30%;opacity: 0;display: block;margin-left:37%;">
        <img src="image/poem4.jpg" class="poem-4" style="width: 30%;opacity: 0;display: block;margin-left:42%;">
        <img src="image/poem5.jpg" class="poem-5" style="width: 30%;opacity: 0;display: block;margin-left:40%;">
        <img src="image/poem6.jpg" class="poem-6" style="width: 30%;opacity: 0;display: block;margin-left:37%;">
    </div>
    <p>无论诗歌与现实，无论过往还是当今，无论是对残缺的补救还是精神的向往,</p>
    <p>有一点毋庸置疑：<b>“世上唯有咳嗽与爱无法掩饰”，对残疾人来说同样如此</b>。</p>
    <p>截至2023年3月10日，百度贴吧的“残疾吧”里有<b>22，466位关注者，336，975个帖子</b>,</p>
    <p>我们爬取了<b>1500个</b>2021年6月后仍有热度的帖子，发现他们的标题中，</p><p>出现频率最多的热词前五为：残疾人、残疾、<b>征婚</b>、工作、<b>相亲</b>。</p>
    <p>同样截至3月10日，知乎话题“残疾人找伴侣有多难”共拥有<b>1226位关注者</b>，话题共<b>被浏览5,490,687次</b>。</p><p>我们将该话题下的<b>255个回答正文</b>制作成为词云图。</p>
    <img src="image/cy.png" style="width: 50%; ">
    <p style="font-size: 15px;color: gray;">[ 数据来源：百度贴吧，知乎话题 ]<p>
    <div style="height:50px"></div>
    <p style="font-size: 40px;margin-top: 0;"><b>强烈的向往，隐秘的苦痛。</b></p>
    <img src="image/cjrsl.png" style="width: 30%;">
    <p style="font-size: 15px;color: gray;margin-top: 0;">[ 数据来源：全国第二次全国残疾人抽样调查数据 ]</p>
    <div style="height:50px"></div>
    <p style="font-size: 35px;"><b>这样庞大的一个群体，</p><p style="font-size: 35px;">他们的爱情将何去何从？</b></p>
    <div style="height:50px"></div>
</div>

<div class="section-2" style="text-align: center;">

    <img src="image/back1.png" class="backgroundd1" style="width:100%;position:sticky;top:0;z-index: -1;">
    <a name="part2"></a>
    <div style="background-color: rgba(119,61,57,1);">
        <div style="height: 60px;"></div>
        <p style="color:white;font-size:62px;color: antiquewhite;">相 遇 之 路</p>
        <p style="padding-top: 50px;">线上交友和线下相亲，对于普通人来说，似乎只是寻找爱情的备选项。<b></p><p>但是这两种渠道，却是残疾人与恋人相遇的主要方式。</b></p>
        <div style="height: 30px;"></div>
        <p style="color:antiquewhite; font-size:30px;font-weight: 800;">1.线下相亲是否碰壁</p>
        <div style="height: 30px;"></div>
        <p>各省、自治区、直辖市的残疾人联合会，</p><p>致力于维护残疾人在政治、经济、文化、社会等方面平等的公民权利。</p>
        <p>这些经国务院批准和国家法律确认的残疾人自身代表性组织，会为残疾人的相恋之路提供怎样的帮助呢？</p>
        <p>我们在除港澳台地区外的<b>各省、自治区、直辖市的残疾人联合会官网</b>，以“<b>相亲</b>”为关键词进行检索，</p><p>统计了各地有关举办<b>残疾人相亲活动</b>的<b>132条</b>具体信息。</p>
        <p style="font-size: 15px;color: gray;">（下图不同颜色表示各地报道过的、举办相亲活动数量的多少，请点击查看）</p>

        <p style="color:rgba(250,243,234,1);"><b>各地残联所报道的相亲活动数量</b></p>
        <div id="main" style="width: 800px;height: 600px;margin: 0 auto;margin-top: 50px;"></div>

        <p style="font-size: 15px;color: gray;">[ 数据来源：各省、自治区、直辖市的残疾人联合会官网 ]</p>

        <div id="test" style="width: 800px;height: 600px;margin: 0 auto;margin-top: 50px;"></div>
        <div id="education" style="width: 800px;height: 600px;margin: 0 auto;margin-top: 50px;"></div>
        <p style="font-size: 15px;color: gray;">[ 收入测试 ]</p>

        <div id="salary" style="width: 800px;height: 600px;margin: 0 auto;margin-top: 50px;"></div>


        <p>然而，即使是通过这些残联官网，我们能了解到的，往往也只有只言片语。</p><p><b>132份报道中</b>，只有<b>19份</b>完整提及参与人数和成功人数。</p><p>而这19份报道所呈现出的<b>相亲活动成功率</b>，也并不可观。</p>
        <div style="height: 30px;"></div>
        <p style="color:rgba(250,243,234,1);"><b>19份报道中的相亲参与人数以及牵手成功人数</b></p>
        <div id="ly" style="width:800px;height:600px;margin: 0 auto;margin-top: 50px;"></div>
        <p style="font-size: 15px;color: gray;">[ 数据来源：各省、自治区、直辖市的残疾人联合会官网 ]</p>
        <div style="height: 30px;"></div>
        <p>此外，有<b>3个</b>网站<b>无法检索</b>，<b>6个</b>网站<b>没有相关信息。</b></p><p>在能检索到的信息里，也有许多举办过的活动<b>未被报道</b>，被报道过的活动也<b>不都具有详细的介绍</b>。</p>
        <p>以上数据显示，信息量少、举办数量少、举办频率不高、</p><p>成功率低、各地区差异大，是线下相亲活动的主要特点。</p>
        <div style="height: 30px;"></div>
        <p style="color:gold; font-size:30px;font-weight: 800;color:antiquewhite">2.婚恋网站是何图景</p>
        <div style="height: 30px;"></div>
        <p>分别创建于2007、2009、2010年的<b>“兰草之恋”</b>、<b>“等你网”</b>、<b>“必壹爱”</b>,</p>
        <p>其首页分别展示有<b>36984、20000、1254名用户</b>，代表着<b>残疾人版本的网络婚恋社区</b>。</p>
        <p>我们爬取了这些用户对外展示的相关信息，以代表使用这些网络平台寻找爱人的用户画像。</p><p><b>结果如下图所示</b>。</p>
        <p style="font-size: 15px;color: gray;">（点击网页关键词，查看残疾人婚恋网站相关信息分布）</p>
        <div class="bodys">
            <div class="fl">
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 30px;"><br>
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 32px;"><br>
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 32px;"><br>
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 32px;"><br>
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 32px;"><br>
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 32px;"><br>
                <input type="text" name="yourname" style="position:relative;top:150px; left:22%;margin-top: 32px;"><br>
                <div class="getUpdatea" style="position:absolute; top:370px;left:10%;font-weight: 800;">性别比例</div>
                <div class="getUpdateb" style="position:absolute; top:425px;left:8%;font-weight: 800;">年龄组成</div>
                <div class="getUpdatec" style="position:absolute; top:480px;left:10%;font-weight: 800;">所在地分布</div>
                <div class="getUpdated" style="position:absolute; top:370px;left:40%;font-weight: 800;">爱好</div>
                <div class="getUpdatee" style="position:absolute; top:425px;left:42%;font-weight: 800;">残疾类型</div>
                <div class="getUpdatef" style="position:absolute; top:480px;left:40%;font-weight: 800;">爱情宣言</div>
                <div class="carda">
                    <span class="closea">X</span>
                    <div id = "spana" style="width:600px;height:400px;position: relative;top:20px"></div>
                </div>
                <div class="cardb">
                    <span class="closeb">X</span>
                    <div id = "spanb" style="width:600px;height:400px;position:relative;top:20px"></div>
                </div>
                <div class="cardc">
                    <span class="closec">X</span>
                    <div id="spanc" style="width:600px;height:400px;position: relative;top:20px"></div>
                </div>
                <div class="cardd">
                    <span class="closed">X</span>
                    <img src="image/aihao.png" style="width: 100%;position: relative;top:40px">
                </div>
                <div class="carde">
                    <span class="closee">X</span>
                    <div id="spand" style="width:600px;height:400px;position:relative;top:20px"></div>
                </div>
                <div class="cardf">
                    <span class="closef">X</span>
                    <img src="image/aqxy.png" style="width: 100%;position: relative;top:40px">
                </div>
            </div>
        </div>
        <p style="color:antiquewhite; font-size:30px;font-weight: 800;padding-top: 800px;">3.微信公众号行至何处</p>
        <div style="height:30px"></div>
        <p><b>微信公众号</b>也为残疾人相恋提供了一定的渠道</p>
        <p>我们在除港澳台地区外的<b>各省、自治区、直辖市的残疾人联合会微信公众号</b>里，</p><p>以<b>“相亲”</b>作为关键词进行搜索，</p><p>统计了<b>76篇</b>相关文章，并将他们的<b>年平均阅读量</b>结合地域进行呈现。</p>
        <div style="height: 30px;"></div>
        <p style="color: rgba(250,243,234,1);"><b>各地域残联微信公众号“相亲”相关文章年平均阅读量</b></p>

        <div id="mainc" style="width: 800px;height: 900px;margin: 0 auto;margin-top: 50px;padding: 50px;"></div>

        <p style="font-size: 15px;color: gray;margin-top: 0;">[ 数据来源：各省、自治区、直辖市的残疾人联合会微信公众号 ]<p>
        <div style="height:30px"></div>
        <p>此外，以<b>“残疾人婚恋”“残疾人征婚”</b>等为关键词搜索，经筛选得到<b>18个相关公众号</b>。</p>
        <p>18，这个数字显然与残疾人庞大的婚恋市场并不匹配。</p>
        <p>通过统计这18个公众号的账号主体，发现由个人创办的公众号占比超半数，而无一由社会机构创办。</p>
        <p style="font-size: 15px;color: gray;">（点击下方公众号头像，查看公众号名称、主体及简介）</p>
        <div class="bodys">
            <div class="container" style="position:relative;top:0;left:18%">
                <div class="getUpdate1" style="height: 200px;width:200px;"></div>
                <div class="getUpdate2" style="height: 200px;width:200px;"></div>
                <div class="getUpdate3" style="height: 200px;width:200px;"></div>
                <div class="getUpdate4" style="height: 200px;width:200px;"></div>
                <div class="getUpdate5" style="height: 200px;width:200px;"></div>
                <div class="getUpdate6" style="height: 200px;width:200px;"></div>
                <div class="getUpdate7" style="height: 200px;width:200px;"></div>
                <div class="getUpdate8" style="height: 200px;width:200px;"></div>
                <div class="getUpdate9" style="height: 200px;width:200px;"></div>
                <div class="getUpdate10" style="height: 200px;width:200px;"></div>
                <div class="getUpdate11" style="height: 200px;width:200px;"></div>
                <div class="getUpdate12" style="height: 200px;width:200px;"></div>
                <div class="getUpdate13" style="height: 200px;width:200px;"></div>
                <div class="getUpdate14" style="height: 200px;width:200px;"></div>
                <div class="getUpdate15" style="height: 200px;width:200px;"></div>
                <div class="getUpdate16" style="height: 200px;width:200px;"></div>
                <div class="getUpdate17" style="height: 200px;width:200px;"></div>
                <div class="getUpdate18" style="height: 200px;width:200px;"></div>
                <div class="card1">
                    <h1>残疾人红娘</h1>
                    <h1>杭州天剑信息管理咨询有限公司</h1>
                    <p>中国残疾人红娘网是服务残疾人征婚、交友的专业网站，免费提供残疾人征婚，无性婚姻，形式婚姻等特殊人群征婚相亲交友服务平台，是残疾人朋友认识、交流、交往的网上红娘和情感家园。</p>
                </div>
                <div class="card2">
                    <h1>残疾人征婚等你网</h1>
                    <h1>原平市美帅科技有限公司</h1>
                    <p>【等你网服务号】残疾人征婚交友服务：【招对象】【找工作】【找红娘】，帮助残疾人【寻找幸福】。等你网——中国最大的残疾人征婚·交友网站：20万会员，40个QQ群，残疾人相识、恋爱、结婚，而且有了宝宝！www.dengni.org</p>
                </div>
                <div class="card3">
                    <h1>久久残健鹊桥</h1>
                    <h1>个人</h1>
                    <p>残疾人和健全人婚介、相亲交友服务平台，希望能找到那个共度一生的Ta!</p>
                </div>
                <div class="card4">
                    <h1>红尘叙</h1>
                    <h1>深圳市识梦科技有限公司</h1>
                    <p>用社交的方式为残障人士搭建一座融入社会的桥梁</p>
                </div>
                <div class="card5">
                    <h1>言爱网残疾人征婚相亲</h1>
                    <h1>个人</h1>
                    <p>中国最专业的残疾人征婚·交友·公益网站：言爱网：www.yanai.com 宗旨:帮助残疾人朋友能够找到真心相伴一生的知心爱人!</p>
                </div>
                <div class="card6">
                    <h1>残疾人征婚相亲交朋友网</h1>
                    <h1>重庆智多宝商务服务有限公司</h1>
                    <p>残疾人婚恋，残疾人征婚，残疾人交友，残疾人征婚交友，残疾人相亲，残疾人征婚相亲交友，智多帮婚恋—残疾人征婚相亲交友网，完全免费的残疾人征婚相亲交友平台</p>
                </div>
                <div class="card7">
                    <h1>残之家残疾人信息平台</h1>
                    <h1>个人</h1>
                    <p>残之家免费为您提供残疾人政策信息、残友原创、残疾人征婚、残疾人就业等相关内容。</p>
                </div>
                <div class="card8">
                    <h1>残疾人联盟</h1>
                    <h1>个人</h1>
                    <p>我们是由残疾人自己组成的队伍，去帮助那些自卑处在迷茫的残疾人朋友。用我们切身的感受让朋友们乐观自信的生活。</p>
                </div>
                <div class="card9">
                    <h1>必壹爱</h1>
                    <h1>杭州云外云智能科技有限责任公司</h1>
                    <p>每年都有成千上万的来自全国各地的人在必壹爱（www.biyiai.com）找到另一个残疾人伴侣。必壹爱是头号残疾人征婚交友服务，并为那些男士带来希望和在线结识年轻漂亮的女士提供了一个交流的平台</p>
                </div>
                <div class="card10">
                    <h1>残疾人就业征婚服务</h1>
                    <h1>个人</h1>
                    <p>残疾人就业创业征婚交友免费平台</p>
                </div>
                <div class="card11">
                    <h1>残障人之家</h1>
                    <h1>个人</h1>
                    <p>打造五心（暖心、贴心、耐心、恒心、爱心）一流的残疾人就业服务咨询、就业培训、残疾人交友的公众平台，为残障人创造一个共同的家园。</p>
                </div>
                <div class="card12">
                    <h1>安徽残疾人互助论坛</h1>
                    <h1>个人</h1>
                    <p>传递正能量；倡导无障碍；宣传涉残政策；宣扬助残风尚；普及防残意识；分享自强故事。</p>
                </div>
                <div class="card13">
                    <h1>残疾人征婚相亲</h1>
                    <h1>个人</h1>
                    <p>残疾人征婚相亲交友找对象、100%实名制审核、残疾人求职招聘找工作、残疾人新闻资讯、残疾人福利宣传</p>
                </div>
                <div class="card14">
                    <h1>残疾人征婚</h1>
                    <h1>企业（黄山市屯溪区江龙盲人按摩馆）</h1>
                    <p>残疾人关注，残疾人有缘相聚、相识平台。</p>
                </div>
                <div class="card15">
                    <h1>等你网残疾人征婚</h1>
                    <h1>个人</h1>
                    <p>中国最大的残疾人征婚网站，26万会员，数十个相亲群，许许多多残疾人相识、相恋，成功喜结良缘。www.dnw520.com</p>
                </div>
                <div class="card16">
                    <h1>残疾人居家就业服务</h1>
                    <h1>个人</h1>
                    <p>主要服务残疾人居家就业求职招聘征婚交友。客服电话18607162789</p>
                </div>
                <div class="card17">
                    <h1>残疾人征婚就业免费平台</h1>
                    <h1>个人</h1>
                    <p>该公众号建立目的旨在构建残疾人征婚、寻找工作的信息公布平台，帮助残疾人实现自立根生与结束单身生活的美好愿望，在该过程中公众平台管理者不收取任何费用。由于管理者也是残疾人，没有能力与可行性条件去核实信息内容的真实性，真假自辩</p>
                </div>
                <div class="card18">
                    <h1>再来残障互助</h1>
                    <h1>南昌再来科技有限公司</h1>
                    <p>为广大残疾人同胞提供交流的空间，同时提供交友、就业、培训等服务，并为伙伴们提供了各类辅具，是目前最全面，最活跃的残疾人社区，中华残疾人网，你的价值无可替代！</p>
                </div>

            </div>

            <p style="font-size: 15px;color: gray;">[ 数据来源：相关微信公众号 ]<p>

            <p style="font-size: 35px;margin-bottom: 0;"><b>毫无疑问，“如何遇见另一半”，</p><p style="font-size: 35px;margin-bottom: 0;">是长期在婚恋市场上被边缘化的残疾人群体一个亟待得到的回答。</b></p>
            <div style="height: 100px;"></div>
        </div>
    </div>



    <div class="section-3" style="text-align: center;">
        <img src="image/back2.png" class="backgroundd1" style="width:100%;position:sticky;top:0;z-index:-1;">
        <a name="part3"></a>

        <div style="background-color: rgba(119,61,57,1);">
            <div style="height: 60px;"></div>
            <p style="color:white;font-size:62px;color: antiquewhite;">婚 姻 殿 堂</p>
            <div style="height:50px"></div>
            <p>与恋爱是个人的寻寻觅觅不同，婚姻拥有更多宏观层面的事务。</p>
            <p>对于残疾人，<b>有没有条文规定他们步入婚姻殿堂的门槛？他们步入婚姻的方式又会不会有什么不同？</b></p>
            <p style="color:antiquewhite; font-size:30px;font-weight: 800; padding-top:50px">1.能否结婚</p>
            <p style="padding-top: 50px;">通过在国家法律法规数据库中的检索，我们发现，</p><p>从<b>《婚姻法》到《民法典》</b>，法律在<b>“什么样的人能结婚”</b>的问题上态度发生明显变化。</p>

            <img src="image/结婚政策变革.png" style="width:50%">
            <p style="font-size: 15px;color: gray;">[ 数据来源：国家法律法规数据库 ]<p>
            <div style="height: 30px;"></div>
            <p style="color:gold; font-size:30px;font-weight: 800;color:antiquewhite">2.如何结婚</p>
            <div style="height: 30px;"></div>
            <p class="shz">在残疾人如何登记结婚方面，各省市的关注程度不同，</p><p>唯有<b>安徽省</b>和<b>天津市</b>为<b>残疾人结婚登记程序</b>设置有明文规范。</p>
            <p style="font-size: 15px;color: gray;">[ 点击可跳转相应法规 ]<p>
            <a href="http://www.gov.cn/zhengce/zhengceku/2015-12/12/content_5554664.htm" style="text-decoration: none;color:white">
            <p><b>·</b> 《婚姻登记工作规范》第四章第三十六条<p>
            </a>
            <a href="http://mz.ah.gov.cn/public/21761/113496041.html" style="text-decoration: none;color:white">
            <p style="color:white"><b>·</b> 《安徽省婚姻登记工作规范》第三十条<p>
            </a>
            <a href="https://mz.tj.gov.cn/ZWGK5878/ZCFG9602/zcwj/202012/t20201211_4863303.html" style="text-decoration: none;color:white">
            <p style="color:white"><b>·</b> 《天津市婚姻登记工作规范》第三十一条<p>
            </a>
            <div style="height:20px"></div>
            <p><b>生活中，聋哑人士常常无法直接表达自己的观点。</b></p>
            <p><b>在更多地方,他们该“如何结婚”依然是一块迷雾笼罩的区域。</b></p>
            <p style="font-size: 15px;color: gray;">（点击下方标题，可跳转至相关报道）<p>
            <a href="https://new.qq.com/rain/a/20201122a099zd00">
                <img src="image/new1.png" class="fd1" style="width: 30%;opacity: 0;display: block;margin: 0 auto;padding-top:50px;">
            </a>
            <a href="http://www.jiaodong.net/news/system/2013/11/16/012097739.shtml">
                <img src="image/new2.png" class="fd2" style="width: 30%;opacity: 0;display: block;margin: 0 auto;padding-top:50px;">
            </a>
            <a href="http://say.cqnews.net/html/2013-11/16/content_28672285.htm">
                <img src="image/new3.png" class="fd3" style="width: 25%;opacity: 0;display: block;margin: 0 auto;padding-top:50px;">
            </a>
            <div style="height: 10px;"></div>
            <p>	这些案例，有失败也有成功；<b>但可以肯定的是，相关政策仍任重道远。</b></p><p>况且在被报道的案例之外,</p>
            <p><b>一定还存在着更多还没经历、难以经历程序的“婚姻”。</b></p>

            <p style="color:antiquewhite; font-size:30px;font-weight: 800; padding-top:50px">3.婚后境况</p>
            <div style="height:30px"></div>
            <p>对于残疾人来说，得到名正言顺的婚姻，似乎更像是一场需要披荆斩棘的战斗。</p>
            <p>那么，走过漫漫相识路、领得结婚证件后，婚姻殿堂里的真正境况又如何？</p><p>在知乎和百度贴吧的相关话题里，这个问题得到了冰山一角的回答。</p>

            <img src="image/zHcy.png" style="width: 60%;margin: 0 auto;">
            <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 0px;">[ 数据来源：知乎相关话题、百度贴吧 ]<p>
            <p style="font-size: 35px;"><b>我们也希望，未来通过更多的关注，这个回答下能出现更多的幸福感。</b></p>


            <div style="height: 50px;"></div>
        </div>
    </div>

    <div class="section-4" style="text-align: center;">

        <img src="image/back3.png" class="backgroundd1" style="width:100%;position:sticky;top:0;z-index: -1;">
        <a name="part4"></a>

        <div style="background-color: rgba(119,61,57,1);">
            <div style="height: 60px;"></div>
            <p style="color:white;font-size:62px;color: antiquewhite;">回 到 独 身</p>
            <p style="padding-top: 50px;">根据全国第二次全国残疾人抽样调查数据，我国成年残疾人在婚率为<b>61.04%</b>，低于健全人在婚率<b>74.45%</b>。</p>
            <p>学者陈涛在《残疾人婚姻家庭研究和发展的现状分析》中指出,</p><p><b>我国残疾人的离婚比例远超过健全人，而2006年的残疾人有配偶比例比1987年还略有下降。</b></p>
            <div style="height: 20px;"></div>
            <p style="color:rgba(250,243,234,1);"><b>残疾人与非残疾人的婚姻状况</b></p>
            <div id="marriage" style="width: 800px;height: 600px;margin: 0 auto;margin-top: 50px;"></div>
            <p style="font-size: 15px;color: gray;margin-bottom: 0;">[ 数据来源：陈涛.残疾人婚姻家庭研究和发展的现状分析[J].人口与发展,2008(04):73-82. ]<p>
            <p><b>相恋不易，维系婚姻也艰难。</b></p>

            <p>在几乎走至婚姻穷途之时，他们经历过什么，又面临着什么？</p>
            <div style="height: 10px;"></div>
            <p>为了回答这个问题，我们在<b>裁判文书网</b>上设置了</p><p>“全文：残疾人”、“案由：离婚纠纷”、“文书类型：判决书”的条件,</p>
            <p>选择近三年（2019.9.1-2022.9.1）的<b>172篇</b>文书为分析对象,共获得有效文书<b>119篇</b>。</p>
            <p>我们分析了每篇文书的基本信息以及原、被告身体情况，离婚具体案由和判决结果。</p>
            <div style="height:20px"></div>
            <p><b>为什么登上法院？</b></p>
            <div style="height:20px"></div>
            <p style="color: rgba(250,243,234,1);"><b>残疾人离婚案件具体案由</b></p>


            <div id="mainss" style="width: 800px;height: 600px;margin: 0 auto;margin-top: 50px;"></div>
            <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 5px;">[ 数据来源：裁判文书网 ]<p>
            <div style="height:20px"></div>
            <p><b>登上法院的他们状况如何，最终又走向何处？</b></p>
            <div style="height:10px"></div>
            <p style="color: rgba(250,243,234,1);"><b>双方身体状况及案件判决结果</b></p>
            <div id="mainsss" style="width: 800px;height: 600px;position:relative;left:32%"></div>
            <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 5px;">[ 数据来源：裁判文书网 ]<p>
            <div style="height: 20px;"></div>
            <p style="font-size: 35px;"><b>但是，婚姻的结束并不代表爱情的终止；</b></p>
            <p style="font-size: 35px;"><b>也许未来，荆棘里的向往之花也能迎来绽放。</b></p>
            <div style="height: 90px;"></div>

        </div>
    </div>



    <a name="part5"></a>

    <img src="image/coverd.png" class="backgroundd1" style="width:100%;position:sticky;top:0;z-index: -1;">

    <div style="height: 50px;"></div>
    <p><b>在“残疾人网”里，《阿甘正传》是首页推荐的励志电影之一。</b></p>

    <p><b>电影中，阿甘身患残疾，他的母亲却对他说：</b></p>
    <p><b>You are no different than anybody else is.</b></p>
    <p><b>你和别人没有什么不同。</b></p>

    <p style="margin-top: 50px;"><b>我们相信,</b></p>
    <p><b>“没有什么不同”,关于爱情,</b></p>
    <img src=end.jpg></img>
    <p><b>也远远不止爱情。</b></p>
    <div style="height:50px"></div>
    <div style="background-color: rgba(119,61,57,1);">
        <div style="height:90px"></div>
        <p style="color:antiquewhite";><b>数据来源</b></p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;">	[1]《第二次全国残疾人抽样调查主要数据公报（第二号）》</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[2]百度贴吧“残疾吧”</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[3]知乎话题“残疾人找伴侣有多难”</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[4]必壹爱、等你网、兰草之恋等残疾人征婚网站</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[5]中国政府网</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[6]安徽省民政厅</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[7]天津市民政局</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[8]中国裁判文书网</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[9]国家法律法规数据库</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[10]各省、自治区、直辖市的残疾人联合会官网及微信公众号</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[11]与“残疾人婚恋”相关的微信公众号</p>
        <p style="font-size: 15px;color: gray;margin-bottom: 0;margin-top: 1px;">[12]陈涛.残疾人婚姻家庭研究和发展的现状分析[J].人口与发展,2008(04):73-82.”</p>，
        <p style="color:antiquewhite;margin-top: 50px;"><b>作者（按姓氏首字母排序）</b></p>
        <p><b></b></p>
       <p></p>

        <div style="height:50px"></div>
        <p></p>
        <div style="height:30px"></div>
        <img src="image/scu.png"></img>
        <div style="height:120px"></div>
    </div>
    <script src="js/index.js"></script>
    <script src="js/echarts.js"></script>
    <script src="js/china.js"></script>
    <script>
        var box = document.querySelector(".section-1-r");
        var boxone = document.querySelector(".poem-1");
        var boxtwo = document.querySelector(".poem-2");
        var shz = document.querySelector(".shz");
        var boxthree = document.querySelector(".poem-3");
        var boxfour = document.querySelector(".poem-4");
        var boxfive = document.querySelector(".poem-5");
        var cover=document.querySelector(".backs")
        var fdone = document.querySelector(".fd1");
        var fdtwo= document.querySelector(".fd2");
        var fdthree = document.querySelector(".fd3");
        var backgroundd1 = document.querySelector(".backgroundd1");
        var boxsix = document.querySelector(".poem-6");
        //用js检测鼠标滚轮距离顶部位置来给div添加动画
        window.onscroll = function() {
            //检测鼠标滚轮距离顶部位置

            var top = document.documentElement.scrollTop || document.body.scrollTop;
            if(1)
            {
                cover.style.animation = "cover 0.9s forwards"
            }

            if(top > 100)
            {
                box.style.animation = "key 3s forwards" //添加动画

            }

            if(top > (shz.offsetTop - shz.offsetHeight))
            {
                fdone.style.animation = "key 3s forwards" //添加动画
                fdtwo.style.animation = "key 4s forwards"
                fdthree.style.animation = "key 5s forwards"
            }


            if(top > (boxone.offsetTop - boxone.offsetHeight-800))
            {
                boxone.style.animation = "test 3s forwards" //添加动画
            }

            if(top > (boxtwo.offsetTop - boxtwo.offsetHeight-800))
            {
                boxtwo.style.animation = "test 3s forwards" //添加动画     　　　　　　　　
            }

            if(top > (boxthree.offsetTop - boxthree.offsetHeight-800))
            {
                boxthree.style.animation = "test 3s forwards" //添加动画  　　　　　　　
            }

            if(top > (boxfour.offsetTop - boxfour.offsetHeight-800))
            {
                boxfour.style.animation = "test 3s forwards" //添加动画
            }

            if(top > (boxfive.offsetTop - boxfive.offsetHeight-800))
            {
                boxfive.style.animation = "test 3s forwards" //添加动画  　　　　
            }

            if(top > (boxsix.offsetTop - boxsix.offsetHeight-800))
            {
                boxsix.style.animation = "test 3s forwards" //添加动画

            }
        }
        //用js检测鼠标滚轮距离顶部位置来给div添加动画

    </script>
</body>
</html>

