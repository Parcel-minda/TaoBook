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
	<title>注册</title>
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
	<link rel="stylesheet" href="css/register.css" />
	<!--全局样式(清除默认样式)-->
	<link rel="stylesheet" href="css/mains.css" />
	<link rel="stylesheet" href="//at.alicdn.com/t/font_861154_s48lhgef0g.css">
</head>
<!--html内容-->

<body>
	<div class="public">
		<div class="title">注册</div>
		<div class="go_back">
			<a href="login.jsp" class="iconfont icon-back"></a>
		</div>
		<form id="register" action="" class="register">
			<div class="register_list" for="handset">请输入手机号码</div>
			<div class="public_ipt">
				<input id="handset" type="tel" placeholder="请输入手机号码">
				<div>
					<p>请输入以"1"开头的11位有效手机号码</p>
				</div>
			</div>
			<div class="register_list">请输入密码</div>
			<div class="public_ipt">
				<input class="qr_text" id="ipt_test1" type="password" placeholder="请输入密码">
				<p class="test_p">密码要求：6-12位,只能包含数字、字母、下划线</p>
			</div>
			<div class="register_list">请确认密码</div>
			<div class="public_ipt">
				<input class="qr_text" id="ipt_test2" type="password" placeholder="请确认密码">
			</div>
			<div class="public_p">
				<p>两次输入密码不一致，请重新输入</p>
			</div>
			<div class="public_btn">
				<button id="public_register" disabled=false><a href="code/code.jsp">注册</a></button>
			</div>
		</form>
	</div>
</body>

</html>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/rem.js"></script>
<!-- <script src="../../plugin/helpers.js"></script>
<script src="../../plugin/confirm.js"></script> -->
<script src="js/register.js"></script>