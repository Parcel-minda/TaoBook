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
    <link rel="stylesheet" href="css/my-send.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/main.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div class="mySend">
    <!--    头部-->
    <div class="mySend-head">
        <a href="personal.jsp" class="back-to-personal"></a>
        我的发布
        <div class="manage">管理</div>
    </div>
    <!--    内容部分-->
    <div class="bookBox">
	<s:iterator value="booklist" status="status">
        <input type="checkbox" class="check" value="<s:property value='bookid'/>">
        <div class="bookContent">
            <a href="#" class="item">
                <div class="bookImg">
                    <img src="../<s:property value='img'/>" alt="">
                </div>
                <div class="bookInfo">
                    <div class="part1">
                        <span class="bookName"><s:property value='bookname'/></span>
                        <span class="bookType"><s:property value='booktype'/></span>
                    </div>
                    <div class="part2">
                        <span class="author"><s:property value='author'/> | <s:property value='press'/></span>
                        <span class="note"><s:property value='note'/></span>
                        <span class="price">￥<s:property value='price'/></span>
                        <span class="oriprice">原价<s:property value='oriprice'/>元</span>
                    </div>
                </div>
            </a>
        </div>
</s:iterator>
        <div class="bookFooter">
            <input type="checkbox" class="checkAll" id="checkAll">全选
            <button id="delBook" class="delBook">删除</button>
        </div>
    </div>
</div>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>
</body>
</html>