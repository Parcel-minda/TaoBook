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
    <link rel="stylesheet" href="css/qingxie.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div class="wrapper">
    <!--    搜索+导航栏-->
    <div class="head">
        <div class="search-box">
            <input type="text" value="" id="search" placeholder="">
            <span id="submit"></span>
        </div>
        <div class="Img">
            <img src="image/settings.png" alt="" class="settings">
        </div>
    </div>
    <div class="cont">
        <div class="list">
            <input type="checkbox" class="check">
            <div class="items">
                <div class="avitor">
                    <img src="image/photo.jpg" alt="">
                </div>
                <div class="items-info">
                    <p class="count">数量：2</p>
                    <p class="loca">1号楼N740</p>
                    <p class="tel">电话：13772299959</p>
                    <p class="btn">未回收</p>
                </div>
            </div>
        </div>
        <div class="list">
            <input type="checkbox" class="check">
            <div class="items">
                <div class="avitor">
                    <img src="image/photo.jpg" alt="">
                </div>
                <div class="items-info">
                    <p class="count">数量：15</p>
                    <p class="loca">2号楼500</p>
                    <p class="tel">电话：13772299959</p>
                    <p class="btn">未回收</p>
                </div>
            </div>
        </div>
        <div class="list">
            <input type="checkbox" class="check">
            <div class="items">
                <div class="avitor">
                    <img src="image/photo.jpg" alt="">
                </div>
                <div class="items-info">
                    <p class="count">数量：2</p>
                    <p class="loca">1号楼N740</p>
                    <p class="tel">电话：13772299959</p>
                    <p class="btn">未回收</p>
                </div>
            </div>
        </div>
        <div class="list">
            <input type="checkbox" class="check">
            <div class="items">
                <div class="avitor">
                    <img src="image/photo.jpg" alt="">
                </div>
                <div class="items-info">
                    <p class="count">数量：2</p>
                    <p class="loca">1号楼N740</p>
                    <p class="tel">电话：13772299959</p>
                    <p class="btn">未回收</p>
                </div>
            </div>
        </div>
        <div class="list">
            <input type="checkbox" class="check">
            <div class="items">
                <div class="avitor">
                    <img src="image/photo.jpg" alt="">
                </div>
                <div class="items-info">
                    <p class="count">数量：2</p>
                    <p class="loca">1号楼N740</p>
                    <p class="tel">电话：13772299959</p>
                    <p class="btn">未回收</p>
                </div>
            </div>
        </div>
        <div class="bookFooter">
            <input type="checkbox" class="checkAll" id="checkAll">全选
            <button id="delBook" class="delBook">删除</button>
        </div>
    </div>
</div>



<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>

</body>
</html>