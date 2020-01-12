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
    <meta charset="utf-8" />
    <title>登陆</title>
    <!--头部适配-->
    <meta name="description" content="" />
    <meta name="viewport"
        content="minimal-ui, initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name='apple-touch-fullscreen' content='yes'>
    <meta name="full-screen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="keywords" content="" />
    <!--公共样式-->
    <link rel="stylesheet" href="css/public.css" />
    <!--单功能样式-->
    <link rel="stylesheet" href="css/login.css" />
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css" />
      <link rel="shortcut" icon herf="<%=basePath%>images/logos.png">
    <link rel="shortcut icon" href="image/book.ico">
</head>
  
  <body>
 
    <main class="bg">
  <div class="public">
        <!-- [public]公共样式 -->
	<s:form action="customer/customer_login" method="post" cssClass="login">
        <div class="title">登陆</div>
        <form id="login" action="" class="login">
            <!-- [login]登陆列表 -->
 	
            <div class="public_ipt"><input type="text"name="customer.name" placeholder="输入手机号"></div>
 	<s:fielderror fieldName="customer.name" cssClass="fielderror"/>
            <div class="public_ipt"><input type="text" name="customer.password" placeholder="输入密码"></div>
 	<s:fielderror fieldName="customer.password" cssClass="fielderror"/>
            <div class="public_p">
                <p>密码或手机号错误，请重新输入</p>
            </div>
            <div class="public_register">
                <a href="register/register.jsp" class="fl">开始注册</a>
                <a href="password/forgetPassword.jsp" class="fr">忘记密码?</a>
            </div>
            <div class="public_btn">
                <button id="public_login" class="">登录</a></button>
            </div>
        </form>
        <div class="public_footer">
            <p><a href="../code/code.html">密码登录</a></p>
            <p><input type="checkbox" name="true" value="true" checked="checked" id="ser-input"><a href="service.html">阅读并同意用户服务协议</a></p>
        </div>
    </div>
    </s:form>
  </body>
</html>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/rem.js"></script>