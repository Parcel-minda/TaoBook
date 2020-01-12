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
    <meta charset="UTF-8">
    <title>二手书商城</title>
    <!--头部适配-->
    <meta name="description" content=""/>
    <meta name="viewport" content="minimal-ui, initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name='apple-touch-fullscreen' content='yes'>
    <meta name="full-screen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="keywords" content=""/>
    <!--单个自己写的css-->
    <link rel="stylesheet" href="css/update-password.css" />
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css" />
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div id="update-password">
    <!--    头部-->
    <div class="password-head">
        <a href="personal.jsp" class="back-to-personal"></a>
        密码修改
    </div>
<!--    内容区-->
<div class="pass-content">
    <form action="" id="form-pass">
        <div class="inp">
            <p class="pass-tips">请输入原密码：</p>
            <input type="text" class="inp-pass">
        </div>
        <div class="inp">
            <p class="pass-tips">请输入新密码：</p>
            <input type="text"  class="inp-pass">
        </div>
        <div class="inp">
            <p class="pass-tips">再次确认新密码：</p>
            <input type="text" class="inp-pass">
        </div>
        <input type="submit" id="submit-passwd" value="提交">
    </form>
</div>
    <!--    修改信息成功提示框-->
    <div class="tips-box">
        <div class="mask"></div>
        <div class="tips">
            <div class="img">
                <img src="image/success.png" alt="">
            </div>
            <p>密码修改成功！</p>
            <a href="#" id="sure">确定</a>
        </div>
    </div>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
    <script src="js/common.js"></script>
</body>
</html>