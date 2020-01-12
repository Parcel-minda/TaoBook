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
    <link rel="stylesheet" href="css/index.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
    <link rel="shortcut" icon herf="images/logos.png">
     <link rel="shortcut icon" href="image/book.ico">
</head>
<body>
<form action="book/book_showSearch.action">
<div class="wrapper">
    <!--    搜索+导航栏-->
    <div class="head">
        <div class="nav"></div>
        <div class="search-box">
            <input type="text" value="" id="search" name="name" placeholder="二手线性代数">
            <span id="submit"></span>
        </div>
    </div>
    </form>
<!--    分类-->

    <div id="bookList" name="class">
        <ul class="list">
             <li><a href="book/book_showAll.action" value="1">全部</a></li>
             <li><a href="book/book_searchByType.action?type=1">IT类</a></li>
            <li><a href="book/book_searchByType.action?type=2">理工类</a></li>
            <li><a href="book/book_searchByType.action?type=3">文史类</a></li>
            <li><a href="book/book_searchByType.action?type=4">考级用书</a></li>
            <li><a href="book/book_searchByType.action?type=5">考研用书</a></li>
            <li><a href="book/book_searchByType.action?type=6">课外书籍</a></li>
            <li><a href="book/book_searchByType.action?type=7">公共必修类</a></li>
            <li><a href="book/book_searchByType.action?type=8">其他</a></li>
        </ul>
    </div>
  
    <!--    内容部分-->
    <div class="content">
        <!--        轮播图-->
        <div id="slide-box"></div>
        <!--        今日推荐-->
        
        <div class="recommend">
            <div class="hot">
                <span>今日推荐</span>
                <span class="fire"></span>
            </div>
            <div class="bfc">
            	 <div class="bookBox">
	            <s:iterator value="booklist" status="status">
					<div class="bookContent">
						<a href="detail.html" class="item">
							<div class="bookImg">
								<img src="<s:property value='img'/>" alt>
							</div>
								<div class="bookInfo">
									<div class="part1">
										<span class="bookName"><s:property value='bookname'/></span>
										<span class="bookType"><s:property value='booktype'/></span>
									</div>	
									<div class="part2">
										<span class="author"><s:property value='author'/> | <s:property value='press'/></span>
										<span class="note"><s:property value='note'/></span>
										<span class="price"><s:property value='price'/></span>
										<span class="oriprice"><s:property value='oriprice'/></span>
										
									</div>
								</div>
						</a>
					</div>
				</s:iterator>
        	</div>
            </div>
           
    	</div>

    <!--    底部-->
    <div class="footer"></div>
    
</div>

<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>
<script src="js/swiper.js"></script>

<script>
    $('.footer').load("footer.jsp");
</script>
<script>
    $('#slide-box').swiper({
        imgList: ['image/p1.jpg', 'image/p2.jpg', 'image/p3.jpg', 'image/p4.jpg'],
        animateType: 'animate',
        changeBtn: true,
        showPointBtn: true,
        isAuto: true,
        imgHeight: '4rem'
    })
</script>
</body>
</html>