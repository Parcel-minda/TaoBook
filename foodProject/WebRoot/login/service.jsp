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
    <link rel="stylesheet" href="../css/service.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="../css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<div id="service">
    <!--    头部-->
    <div class="service-head">
        <a href="logins.jsp" class="back-to-login"></a>
        用户服务协议
    </div>
    <div class="service-content">
        <p class="red">
            在使用本系统的所有功能之前,请 您务必仔细阅读并透彻理解本声明。您可以选择不使用本系统,但如果您使用本系统,您的使用行为将被视为对本声明全部内容的认可。
        </p>
            <p class="title">免责声明</p>
            <p class="text">鉴于本系统使用非人工检索/分析方式,无法确定您输入的条件进行是否合法,所以本系统对检索/分析出的结果不承担责任。如果因以本系统的检索/分析结果作为任何商业行为或者学术研究的依据产生不良后果，本系统不承担任何法律责任。</p>

           <p class="title">关于交易：</p>
        <p class="text">本平台交易方式为纯线下自行联系交易。本平台只做中间商，负责民大校内买家和卖家的信息发布与收集，直接为买家提供卖家的联系方式。本平台不收取任何中间费用。</p>

            <p class="title">关于隐私权：</p>
        <p class="text">访问者在本系统注册时提供的一些个人资料,本系统除您本人同意外不会将用户的任何资料以任何方式泄露给第三方。当用户作为卖家时我们视用户为同意将联系方式给与买家。当政府部门、司法机关等依照法定程序要求本系统披露个人资料时，本系统将根据执法单位之要求或为公共安全之目的提供个人资料，在此情况下的披露,本系统不承担任何责任。</p>

            <p class="title">关于版权：</p>
            <p class="fir">一、被本系统授权使用的单位，不应超越授权范围。</p>
            <p>二、本系统提供的资料如与相关纸质文本不符,以纸质文本为准。</p>
            <p>三、如因作品内容、版权和其它问题需要同本系统联系的,请在本系统发布该作品后的30日内进行。</p>

            <p class="title">关于解释权：</p>
            <p class="text">本系统之声明以及其修改权、更新权及最终解释权均属本站以及创作团队所有。</p>
    </div>
</div>
<script src="../js/zepto.min.js"></script>
<script src="../js/rem.js"></script>
</body>
</html>