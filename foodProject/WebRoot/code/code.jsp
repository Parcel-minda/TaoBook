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
	<title>验证码登录</title>
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
	<link rel="stylesheet" href="css/register.css" />
	<!--单功能样式-->
	<link rel="stylesheet" href="css/code.css" />
	<!--全局样式(清除默认样式)-->
	<link rel="stylesheet" href="css/mains.css" />
	<link rel="stylesheet" href="//at.alicdn.com/t/font_861154_s48lhgef0g.css">
	 <link rel="shortcut icon" href="image/book.ico">
</head>
<!--html内容-->

<body>
	<div class="public">
		<div class="title">验证码登录</div>
		<div class="go_back">
			<a href="login/logins.jsp" class="iconfont icon-back"></a>
		</div>
		<form id="register" action="" class="register">
			<div class="register_list">验证码已发送到手机</div>
			<div class="code-input">
				<input type="number">
				<input type="number">
				<input type="number">
				<input type="number">
				<input type="number">
				<input type="number">
			</div>
			<div class="public_p">
				<p style="display: block;">验证码错误，请重新输入</p>
			</div>
			<div class="public_btn">
				<button id="public_login" class=""><a href="indexs.jsp">登录</a></button>
			</div>
		</form>
	</div>
</body>

</html>
<script src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/code.js"></script>
