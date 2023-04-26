<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
    <title>用户信息</title>

    <!-- Bootstrap -->	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
 
    <style type="text/css">
    	body{
    		width: 900px;
    		margin: auto;
    	}

		caption,th,td{
			text-align: center;
		}
		
	</style>
  </head>
	
  
  <body>
  	<h3 style="text-align: center">用户信息列表</h3>
   	<div style="float: right">
   		<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet" style="font-size: 20px;color: blue">商品首页</a>
   	</div>
   		<table align="center" class="table table-hover user_table">
	  		<tr>
	  			<th>用户名</th>
	  			<th>密码</th>
	  			<th>邮箱</th>
	  			<th>姓名</th>
	  			<th>电话</th>
	  			<th>性别</th>
	  			<th>操作</th>
	  		</tr>
	  		<tr>
	  			<td>${user.username}</td>
	  			<td>${user.password}</td>
	  			<td>${user.email}</td>
	  			<td>${user.name}</td>
	  			<td>${user.tel}</td>
	  			<td>${user.gender}</td>
	  			<td>
	  				<a class="btn btn-info" href="${pageContext.request.contextPath}/servlet/FindUserOwnServlet?id=${user.id}">修改</a>
	  			</td>
  			</tr>
		</table>
	
  </body>
  <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>
