<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>      
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
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
	
	<link rel="stylesheet" href="<%=basePath%>css/public.css">
	<link rel="stylesheet" href="<%=basePath%>css/register.css">
	<link rel="stylesheet" href="<%=basePath%>css/main.css">
	<!-- ------------以下这个css是bootstrap Validator插件的css-------------- -->
	<link rel="stylesheet"href=" href="//at.alicdn.com/t/font_861154_s48lhgef0g.css">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<!-- ------------以下这个css是bootstrap Validator插件的css-------------- -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrapValidator.css">
	 <link rel="shortcut icon" href="image/book.ico">
	
  </head>
  
  <body>
   <div class="public">

   <div class= "title">注册<div>
		<div class="go_back">
			<a href="../login/login.html" class="iconfont icon-back"></a>
		</div>
		<form id="register"  class="register" action="customer/customer_reg" id="defaultForm" method="post" cssClass="login" validate="true">
	      <div class="register_list" for="handset">请输入用户名</div>
			<div class="public_ipt">
               
                 <input type="text"  class="form-control"  name="customer.name" />
            
           </div>
           <!--  
           <div class="list">
	           <label for="passwd">请输入密码</label>
	           <input type="password" name="customer.password" id="passwd"/>
           </div>-->
           <div class="register_list">请输入密码</div>
			<div class="public_ipt">
               
                 <input type="password" class="form-control"  name="customer.password" />
             </div>
          
           <div class="register_list">请输入地址</div>
			<div class="public_ipt">
                 <input type="text" class="form-control"  name="customer.address" />
            
           </div>
          
             <div class="public_btn">
               <button type="submit" >注&nbsp;&nbsp;册 </button>
             </div>
          

	   </div>
	   </div> 
	    
  
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/jquery-3.3.1.js"></script>
	<script src="<%=basePath%>js/rem.js"></script>
	<script src="<%=basePath%>js/register.js"></script>
    <!-- -------以下这个css是bootstrap Validator插件的css--------- -->
    <script src="<%=basePath%>js/bootstrapValidator.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {
		    $('#defaultForm')
		        .bootstrapValidator({
		            message: '请输入内容',
		            feedbackIcons: {
		                valid: 'fa fa-check',
		                invalid: 'fa fa-remove',
		                validating: 'fa fa-refresh'
		            },
		            fields: {
		                'customer.name': {
		                    message: '用户名无效',
		                    validators: {
		                        notEmpty: {
		                            message: '用户名不得为空'
		                        },
		                        stringLength: {
		                            min: 6,
		                            max: 20,
		                            message: '用户名必须在6-20个字符之间'
		                        },
		                        regexp: {
		                            regexp: /^[a-zA-Z0-9_\.]+$/,
		                            message: '用户名只能包含字母、数字、点、下划线 '
		                        }	                        
		                    }
		                },
		                'customer.password': {
		                    validators: {
		                        notEmpty: {
		                            message: '密码不得为空'
		                        },
		                        different: {
									field: 'customer.name',
									message: '密码不能与用户名相同'
									},
		                    }
		                },
		                'customer.address': {
		                    validators: {
		                        notEmpty: {
		                            message: '请输入地址'
		                        }
		                    }
		                }
		            }
		        })
		});
	</script>
  </body>
</html>
