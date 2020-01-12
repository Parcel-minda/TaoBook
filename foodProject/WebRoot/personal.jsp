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
    <link rel="stylesheet" href="css/personal.css" />
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css" />
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div class="pers">
<!--    头部-->
    <div class="header">
          <p class="per"></p>
          <p class="per-center">个人中心</p>
    </div>
<!--    内容-->
    <div class="content-list">
<!--        头像资料-->
        <div class="head-photo">
<!--            头像-->
            <div class="photo"><img src="image/photo.jpg" alt=""></div>
<!--            个人签名和昵称-->
            <div class="per-data">
                <p class="nickname">掉在地上的糯米滋</p>
                <p class="signature">本是一颗大山深处的板蓝根</p>
            </div>
        </div>
<!--        我的发布和捐赠-->
        <div class="pub-and-don">
               <a class="pub-one pub-border" href="personal/my-send.jsp">
                   <p class="pub-img"><img src="image/icon_send.png" alt=""></p>
                   <p class="pub-text">我的发布</p>
               </a>
            <div class="pub-one">
                <p class="pub-img"><img src="image/icon_give.png" alt=""></p>
                <p class="pub-text">我的捐赠</p>
            </div>
        </div>
<!--        修改个人信息意见反馈等模块-->
        <div class="list">
            <ul>
                <li>
                    <a href="personal/update-personal-info.jsp" class="item">
                        <p class="li-one"><img src="image/icon_update_personal_info.png" alt=""></p>
                        <p class="li-two">修改个人信息</p>
                        <p class="li-three"><img src="image/icon_right_arrow.png" alt=""></p>
                    </a>

                </li>
                <li>
                    <a href="personal/advice.jsp" class="item">
                        <p class="li-one"><img src="image/advice.png" alt=""></p>
                        <p class="li-two">意见反馈</p>
                        <p class="li-three"><img src="image/icon_right_arrow.png" alt=""></p>
                    </a>
                </li>
                <li>
                    <a href="personal/update-password.jsp" class="item">
                        <p class="li-one"><img src="image/icon_update_passwd.png" alt=""></p>
                        <p class="li-two">修改密码</p>
                        <p class="li-three"><img src="image/icon_right_arrow.png" alt=""></p>
                    </a>
                </li>
                <li>
                    <a href="personal/aboutUs.jsp" class="item">
                        <p class="li-one"><img src="image/about_us.png" alt=""></p>
                        <p class="li-two">关于我们</p>
                        <p class="li-three"><img src="image/icon_right_arrow.png" alt=""></p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
<!--    底部-->
    <div class="footer"></div>
</div>




<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script>
    $('.footer').load("footer.jsp");
</script>
</body>
</html>
