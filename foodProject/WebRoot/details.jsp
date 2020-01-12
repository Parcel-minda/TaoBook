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
 <base href="<%=basePath%>">
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
    <link rel="stylesheet" href="css/detail.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div id="detail">
    <!--    头部-->
    <div class="detail-head">
        <a href="indexs.jsp" class="back-to-index"></a>
        商品浏览
    </div>
    <div id="detail-content">
        <div id="seilorInfo">
            <div class="seilorImg">
                <img src="image/photo.jpg" alt="">
            </div>
            <p class="seilor">未希</p>
            <span class="date">2019年10月13日发布 </span>
        </div>
        <!--        轮播图-->
        <div id="box-slider"></div>
        <div id="info">
            <span class="bookname">人机交互软件工程视角</span>
            <span class="note">含有笔记</span>
            <div class="bookDetail">
                <p>主编：骆斌</p>
                <p>出版社：机械工业出版社</p>
            </div>
<!--            <div class="price">-->
            <span class="bookType">理工类</span>
                <span class="price">￥18</span>
                <span class="oriprice">原价39元</span>
<!--            </div>-->
        </div>
        <div id="like">
            <a href="like.jsp" class="aLike">
                <img src="./image/like.png" alt="">我想要
            </a>
        </div>
    </div>
</div>


<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/swiper.js"></script>
<script>
    $('#box-slider').swiper({
        imgList: ['image/p1.jpg', 'image/p2.jpg', 'image/p3.jpg', 'image/p4.jpg'],
        animateType: 'animate',
        changeBtn: true,
        showPointBtn: false,
        isAuto: true,
        imgHeight: '7.5rem'
    })
</script>
</body>
</html>
