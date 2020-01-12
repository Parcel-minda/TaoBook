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
    <title>底部</title>
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
    <link rel="stylesheet" href="css/footer.css" />
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css" />
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div class="footer">
    <ul class="list">
        <li>
            <div>
                <a class="pic shouye"></a>
                <a class="text" href="indexs.jsp">二手书商城</a>
            </div>
        </li>
        <li>
            <div>
                <a class="pic plus"></a>
                <a class="text" href="add.jsp">我要卖书</a>
            </div>
        </li>
        <li>
            <div>
                <a class="pic gift"></a>
                <a class="text" href="donateBook.jsp">图书捐赠</a>
            </div>
        </li>
        <li>
            <div>
                <a class="pic personal"></a>
                <a class="text" href="personal.jsp">个人中心</a>
            </div>
        </li>
    </ul>
</div>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
</body>
</html>