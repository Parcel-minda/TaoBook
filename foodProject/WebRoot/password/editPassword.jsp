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
		<title>修改密码</title>
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
	    <link rel="stylesheet" href="css/editPassword.css" />
	    <!--全局样式(清除默认样式)-->
	    <link rel="stylesheet" href="css/mains.css" />
	     <link rel="shortcut icon" href="image/book.ico">
	</head>
	<!--html内容-->
	<body> 
		 <div class="main">
		 	 <div class="title">密码修改</div>
		 	 <div class="content">
		 	 	  <div class="oldpassword">
		 	 	  	   <p>请输入新密码:</p>
		 	 	  	   <div><input type="text" /></div>
		 	 	  </div>
		 	 	  <div class="againpassword">
		 	 	  	   <p>再次确认新密码：</p>
		 	 	  	   <div><input type="text" /></div>
		 	 	  </div>
		 	 </div>
		 	 <div class="footer">
				 <a href="login.jsp">确认</a>

		 	 </div>
		 </div>   
	</body>
</html>
<script src="js/rem.js"></script>
<script type="text/javascript">
	  
</script>
