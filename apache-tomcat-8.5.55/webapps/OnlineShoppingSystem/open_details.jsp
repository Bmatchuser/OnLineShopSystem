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
    <title>商品详情</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
        body{
            
            margin: auto;
        }

        caption,th,td{
            text-align: center;
        }

    </style>
    <script type="text/javascript">
        function addCart(id){
            if(confirm("你确定要删除吗！"))
            {
                location.href="${pageContext.request.contextPath}/servlet/DelOrderServlet?id="+id;
            }
        }
        
    </script>
</head>


<body>
	<h1 align="center">商品详情</h1>
	
   		<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet?type=电脑办公&flag=1" style="font-size: 20px;color: blue;margin-left: 150px">商品首页</a>

   
   			<hr>
   	
	
	<center>
		<table align="center">
			<tr>
				
				<td width="50%" valign="top">
				<form action="servlet/AddCartServlet" align="center">
					<table align="center">
						<tr>
							<td rowspan="5"><img src="images/${product.picture}"
								width="200" height="300" />
							</td>
						</tr>
						<tr>
							<td style="float: left"><b style="color: red">商品名:</b>${product.name}
							</td>
						</tr>
						<tr>
							<td style="float: left"><b style="color: red;float: left">销售商:</b>${product.company}</td>
						</tr>
						<tr>
							<td style="float: left"><b style="color: red">价格:</b>${product.price}</td>
							<td style="float: left"><b style="color: red;margin-left: 50px">存量:</b>${product.number}</td>
						
						</tr>
						
						<tr>
							<td>
							购买数量：
							
							<input type="text" id="number" name="number" value="1" size="2"/>
							
							</td>
						</tr>
					</table>
					
					<br>
						
						<button id="addCart" type="submit" class="btn btn-primary">加入购物车</button>
						<a href="servlet/CartServlet" class="btn btn-primary">去购物车结算</a>
					</form>
				</td>
				
				
			</tr>
		</table>
	</center>
</body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>
