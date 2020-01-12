<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>二手书商城</title>
    <!--头部适配-->
    <meta name="description" content=""/>
    <meta name="viewport"
          content="minimal-ui, initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name='apple-touch-fullscreen' content='yes'>
    <meta name="full-screen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="keywords" content=""/>
    <!--单个自己写的css-->
    <link rel="stylesheet" href="css/index.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
<div class="wrapper">
    <!--    搜索+导航栏-->
    <div class="head">
        <div class="nav"></div>
        <div class="search-box">
            <input type="text" value="" id="search" placeholder="二手线性代数">
            <span id="submit"></span>
        </div>
    </div>
<!--    分类-->
    <div id="bookList">
        <ul class="list">
            <li><a href="">IT类</a></li>
            <li><a href="math.html">理工类</a></li>
            <li><a href="">文史类</a></li>
            <li><a href="">考级用书</a></li>
            <li><a href="">考研用书</a></li>
            <li><a href="">课外书籍</a></li>
            <li><a href="">公共必修类</a></li>
            <li><a href="">其他</a></li>
        </ul>
    </div>
    <!--    内容部分-->
    <div class="content">
        <!--        轮播图-->
        <div id="slide-box"></div>
        <!--        今日推荐-->
        <div class="recommend">
            <div class="hot">
                <span>今日推荐</span>
                <span class="fire"></span>
            </div>
            <div class="bookBox"></div>
        </div>
    </div>
    <!--    底部-->
    <div class="footer"></div>
</div>

<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>
<script src="js/swiper.js"></script>
<script src="js/dataRander.js"></script>
<script>
    $('.footer').load("footer.html");
</script>
<script>
    $('#slide-box').swiper({
        imgList: ['image/p1.jpg', 'image/p2.jpg', 'image/p3.jpg', 'image/p4.jpg'],
        animateType: 'animate',
        changeBtn: true,
        showPointBtn: true,
        isAuto: true,
        imgHeight: '4rem'
    })
</script>
</body>
</html>