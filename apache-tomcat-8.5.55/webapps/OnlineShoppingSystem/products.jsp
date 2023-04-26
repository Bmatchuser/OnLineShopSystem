<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import = "com.yl.dao.ProductDao" %>
<%@ page import="com.yl.vo.Products"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
 
    <base href="<%=basePath%>">
    <title>商品界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		div{
			float: left;
			margin: 10px;
		}
		div dd{
			margin:0px;
			font-size:10px;
		}
		div dd.dd_name{
			color:blue;
		}
		div dd.dd_company{
			color:#000;
		}
		
  		a:HOVER {
			text-decoration: none;
		}
  		a:FOCUS {
			text-decoration: none;
		}
		body{
    		width: 100%;
    		margin: auto;
    	}
	</style>
	
  </head>
  
  <body>
    <h1 align="center">电子产品网上商城</h1>
    
    <hr>
    
 	
    <center>
    
   		<div class="container-fluid">
   			
   		
   			
   			<div class="row" style="background-color: red; width: 100%; text-align: center">
   				
   				<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet?type=电脑办公" class="btn btn-default" style="background-color: red;float: left;margin-left: 150px;color: white;border: none">电脑办公</a>
			 	<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet?type=手机数码" class="btn btn-default" style="background-color: red;float: left;color: white;border: none">手机数码</a>
			 	<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet?type=蓝牙音箱" class="btn btn-default" style="background-color: red;float: left;color: white;border: none">蓝牙音箱</a>
			 	<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet?type=蓝牙耳机" class="btn btn-default" style="background-color: red;float: left;color: white;border: none">蓝牙耳机</a>
			 	<a href="${pageContext.request.contextPath}/servlet/UserLogOutServlet" class="btn btn-default" style="background-color: red; float: right;color: white;border: none">退出</a>
			 	<a href="${pageContext.request.contextPath}/servlet/UserOwnShowServlet" class="btn btn-default" style="background-color: red; float: right;color: white;border: none">个人信息</a>
			 	<a href="${pageContext.request.contextPath}/servlet/CartServlet" class="btn btn-default" style="background-color: red; float: right;color: white;border: none">我的购物车</a>
			 	<a href="${pageContext.request.contextPath}/servlet/OrderOwnListServlet" class="btn btn-default" style="background-color: red; float: right;color: white;border: none">我的订单</a>
   			</div>
   			<div class="row" style="margin-left: 100px;margin-right: 100px;">
   				<c:forEach items="${productList}" var="product" >
		   			<div  style="width: 150;margin-left: 25px;float: left;" >		
		 					<a href="servlet/ProductDetailServlet?id=${product.id}"><img src="images/${product.picture}" width="120" height="150" border="1"/></a>
		 					<p><b>商品名：</b>${product.name}</p>
		 					<p><b>销售商：</b>${product.company}</p>
		 					<p><b>价格：</b>${product.price}</p>
		   			</div>
   				</c:forEach>
   			</div>
   		</div>
   		
    </center>   
   <div m-padding="10px 0px 10px 0px" p-padding="10px 0 10px 0" css_animation_delay="0" qfyuuid="qfy_column_text_shx3h" data-anitime="0.7" class="qfy-element qfy-text qfy-text-42518 qfe_text_column qfe_content_element  " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0;margin-bottom:0;padding-top:10px;padding-bottom:10px;padding-right:0;padding-left:0;border-radius:0px;border-top:1px solid #e2e2e2;border-bottom:1px solid #e2e2e2;border-left:0px solid #e2e2e2;border-right:0px solid #e2e2e2;width: 100%;text-align: center;">
		
			  版权所有2021 电子产品网上商城
	</div>
      
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


  </body>
</html>
