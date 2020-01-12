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
   
	
	 <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-fileupload.js"></script>
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
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
    <link rel="stylesheet" href="css/seilBook.css"/>
    <!--全局样式(清除默认样式)-->
    <link rel="stylesheet" href="css/mains.css"/>
     <link rel="shortcut icon" href="image/book.ico">
	
  </head>
  
  <body>
  <div id="seilBook">
    <!--    头部-->
    <div class="seilBook-head">
        <a href="indexs.jsp" class="back-to-index"></a>
        我要卖书
    </div>
		   <s:form action="" cssClass="seilBook-form">
		      <div class="box-input">
            <label for="book-name">书籍名称：</label>
            <input type="text" name="name" id="book-name" >
        </div>
        <div class="box-input">
            <label for="type">所属分类：</label>
            <select id="type" name="type">
                <option value="1">理工类</option>
                <option value="2">文史类</option>
                <option value="3">IT类</option>
                <option value="4">考研用书</option>
                <option value="5">考级用书</option>
                <option value="6">课外书籍</option>
                <option value="7">公共必修类</option>
                <option value="8">其他</option>
            </select>
        </div>
        <div class="box-input">
            <label for="author">书籍主编：</label>
            <input type="text" name="author" id="author">
        </div>
        <div class="box-input">
            <label for="press">出版社名：</label>
            <input type="text" name="press" id="press">
        </div>
        <div class="box-input">
            <label for="oriprice">原购买价：</label>
            <input type="text" name="oriprice" id="oriprice">
        </div>
        <div class="box-input">
            <label for="price">二手售价：</label>
            <input type="text" name="price" id="price">
        </div>
        <div class="box-input">
            <label for="tel">联系电话：</label>
            <input type="text" name="tel" id="tel">
        </div>
        <div class="box-input">
            <label for="newDeg">新旧程度：</label>
            <select id="newDeg" name="newDeg">
                <option value="1">几乎全新</option>
                <option value="2">轻微勾画</option>
                <option value="3">大量笔记</option>
                <option value="4">不影响阅读</option>
            </select>
        </div>
        <div class="box-input">
            <label for="bookphoto">上传照片：</label>
            </div>
			                <div class="col-md-4">
                              <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                   <img src="<%=basePath%>upload/demoUpload.jpg" alt="" />
                                </div>
                                <div class="fileupload-preview fileupload-exists thumbnail" 
                                   style="max-width: 200px; max-height:150px; line-height: 20px;">
                                </div>
                                <div>
                                   <span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>
                                   <span class="fileupload-exists">浏览</span><input type="file" name="bookphoto"/></span>
                                   <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                </div>
                              </div>
                            </div>
           
        <!--       点击提交按钮弹出弹框提示提交成功-->
        <input type="submit" value="提交" id="submit-seilBook">
		    </s:form>
		  </div>
		  </div>
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
	
	
<script src="js/jquery-3.3.1.js"></script>
<script src="js/zepto.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/common.js"></script>
  </body>
</html>
