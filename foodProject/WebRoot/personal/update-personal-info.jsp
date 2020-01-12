<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
 <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <title>修改个人信息</title>
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
    <link rel="stylesheet" href="css/update-personal-info.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div class="update-info">
    <!--    头部-->
    <div class="update-head">
        <a href="personal.jsp" class="back-to-personal"></a>
        修改个人信息
    </div>
    <!--    内容部分-->
    <div class="update-content">
        <div class="update-photo">
            <div class="box-photo">
                <img src="../image/photo.jpg" alt="">
            </div>
            <p class="pic-tips">点击图片修改信息</p>
        </div>
        <!--    修改信息-->
        <form action="" class="info-form">
            <div class="box-input">
                <label for="per-name">用户昵称：</label>
                <input type="text" name="name" id="per-name" placeholder="掉在地上的糯米滋">
            </div>
            <div class="box-input">
                <label for="sex">用户性别：</label>
                <select id="sex">
                    <option>女</option>
                    <option>男</option>
                    <option>保密</option>
                </select>
            </div>
            <div class="box-input">
                <label for="signature">个性签名：</label>
                <input type="text" name="sex" id="signature" placeholder="本是一颗大山深处的板蓝根">
            </div>

            <!--       点击提交按钮弹出弹框提示提交成功-->
            <input type="button" value="提交" id="submit-info">
        </form>


    </div>
    <!--    修改信息成功提示框-->
    <div class="tips-box">
        <div class="mask"></div>
        <div class="tips">
            <div class="img">
                <img src="image/success.png" alt="">
            </div>
            <p>您已成功修改信息！</p>
            <a href="#" id="sure">确定</a>
        </div>
    </div>

</div>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>
</body>
</html>