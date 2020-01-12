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
    <link rel="stylesheet" href="css/donateBook.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div id="donateBook">
    <!--    头部-->
    <div class="donateBook-head">
       <a href="indexs.jsp" class="back-to-index"></a>
        图书捐赠
    </div>
    <form action="" class="donateBook-form">
        <div class="box-input">
            <label for="book-number">书籍数量：</label>
            <input type="text" name="name" id="book-number" >
        </div>
        <div class="box-input">
            <label for="department">宿舍楼号：</label>
            <select id="department">
                <option>1号学生公寓楼</option>
                <option>2号学生公寓楼</option>
                <option>3号学生公寓楼</option>
                <option>4号学生公寓楼</option>
                <option>5号学生公寓楼</option>
                <option>6号学生公寓楼</option>
            </select>
        </div>
        <div class="box-input">
            <label for="doorNum">门牌号码：</label>
            <input type="text" name="author" id="doorNum">
        </div>
        <div class="box-input">
            <label for="tel">联系电话：</label>
            <input type="text" name="tel" id="tel">
        </div>
        <div class="box-input">
            <label for="time">收取时间：</label>
            <select id="time">
                <option>本月15号晚上7:00-9:00</option>
                <option>下月15号晚上7:00-9:00</option>
            </select>
        </div>
        <!--       点击提交按钮弹出弹框提示提交成功-->
        <input type="button" value="提交" id="submit-donateBook">
    </form>
</div>
<!--    提交成功提示框-->
<div class="tips-box">
    <div class="mask"></div>
    <div class="tips">
        <div class="img">
            <img src="image/success.png" alt="">
        </div>
        <p>提交成功！</p>
        <a href="#" id="sure">确定</a>
    </div>
</div>


<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>
</body>
</html>