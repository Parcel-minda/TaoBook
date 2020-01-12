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
    <link rel="stylesheet" href="css/like.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div id="like">
    <!--    头部-->
    <div class="like-head">
        <a href="detail.jsp" class="back-to-detail"></a>
        我想要
    </div>
    <div class="like-content">
       <p class="tips">本APP不提供线上交易服务，所有交易活动为线下交易</p>
        <div class="chat">
            <div class="list p1">
                <div class="avitor"><img src="./image/photo.jpg" alt=""></div>
                <div class="text">您好，欢迎光临我的小店。
                </div>
            </div>
            <div class="list p2">
                <div class="avitor"><img src="./image/photo.jpg" alt=""></div>
                <div class="text">我的微信号：18181761706
                    如果你对我的宝贝感兴趣，欢迎随时联系我~
                </div>
            </div>
            <div class="list p3">
                <div class="avitor"><img src="./image/photo.jpg" alt=""></div>
                <div class="text">这本书适用于软件工程的同学，
                    当然也欢迎其他喜欢软件的同
                    学把它带回家~
                </div>
            </div>
        </div>
    </div>
</div>



<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
</body>
</html>