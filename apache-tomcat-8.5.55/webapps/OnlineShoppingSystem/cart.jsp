<%@page import="com.yl.vo.Products"%>
<%@page import="com.yl.vo.Cart"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD	 HTML 4.01 Transitional//EN">
<html>
  <head>
 	 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- Bootstrap -->	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
 
    <base href="<%=basePath%>">
    
    <title>购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
    	body{
    		width: 900px;
    		margin: auto;
    	}

		caption,th,td{
			text-align: center;
		}
		
	</style>
	<script language="javascript">
	function delcfm()
	{
		if(!confirm("确认要删除？"))
		{
			window.event.returnValue = false;
		}
	}
	</script>
  </head>
  
  <body>
    <h1 align="center">我的购物车</h1>
    <hr>
   <div style="float: right">
   		<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet" style="font-size: 20px;color: blue">商品首页</a>
   	</div>
    <div>
      <form action="" method="post">
        <table class="table table-hover user_table">
          <tr>
          	<th>编号</th>
          	<th>商品名称</th>
          	<th>商品单价</th>
          	<th>购买数量</th>
          	<th>操作</th>
          </tr>
          
          <c:forEach items="${carts}" var="cart" varStatus="s">
          	<tr>
          	<td>${s.count}</td>
          	<td>${cart.name}</td>
          	<td>${cart.price}</td>
          	<td>${cart.number}</td>
          	<td><a href="servlet/DelCartServlet?id=${cart.id}" onclick="delcfm();">删除</a></td>
          </tr>
          </c:forEach>
          
          
        </table>
        
        <div><span>总计：${totalPrice}元</span></div>
        <a href="${pageContext.request.contextPath}/add_cart.jsp" class="btn btn-primary" style="float: right">立即购买</a>
        
        
      </form>
    </div>
    
     <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    
  </body>
</html>
