<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" href="../css/reg.css">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/reg.css">
  </head>
  
<body>
	<div class="reg_layout">
		<div class="reg_left">
			<p class="reg_left_firstp">添加新订单</p>
			<p class="reg_left_secondp">ORDER REGISTER</p>
		</div>

		<div class="reg_center">
			<div class="reg_form">
				<form id="form" action="servlet/AddCartOrderServlet" method="post">
					<table>
						<tr>
							
							<td class="td_right"><input type="hidden" name="username" id="username"
								value="${username}"/>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">手机号：</label></td>
							<td class="td_right"><input type="text" name="tel" id="tel"
								placeholder="请输入手机号" />
								<span id="s_tel"></span>
							</td>
						</tr>					
						<tr>
							<td class="td_left"><label for="addre">地址：</label></td>
							<td class="td_right">
							<textarea name="address" id="address" rows="20" cols="15" ></textarea>
							</td>
						</tr>
					</table>
						<input class="btn_submit" type="submit" name="submit" value="添加" />
						
				</form>
			</div>
		</div>

		
	</div>

	<script src="js/addCart.js"></script>
</body>
</html>
