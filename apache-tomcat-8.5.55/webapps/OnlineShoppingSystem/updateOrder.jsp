<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" href="../css/reg.css">
<html>
<head>
<base href="<%=basePath%>">

<title>更新订单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/reg.css">
<style type="text/css">
.center {
	margin-left: 250px;
	margin-top: 30px;
}
</style>
</head>

<body>
	<div class="reg_layout">
		<div style="margin-left: 10px;margin-top: 10px;float: left">
			<p class="reg_left_firstp">修改订单</p>
			<p class="reg_left_secondp">UPDATE ORDER</p>
		</div>
		<div class="reg_center center" style="margin-left: 150px">
			<div class="reg_form">
				<div style="margin-bottom: 20px">
					<h2 style="padding-left: 50px">订单信息修改</h2>
				</div>
				<form id="form" action="servlet/UpdateOrderServlet" method="post" style="margin-bottom: 20px">
					
					<table>
						<tr>
							<td class="td_left"><label for="username">用户名：</label></td>
							<td class="td_right"><input type="text" name="username" id="username"
								placeholder="请输入用户名" value="${order.username}"/>
								<span id="s_username"></span>
							</td>
							<td><input type="hidden" name="id" value="${order.id} ">
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">手机号：</label></td>
							<td class="td_right"><input type="text" name="tel" id="tel"
								placeholder="请输入手机号" value="${order.tel}"/>
								<span id="s_tel"></span>
							</td>
						</tr>					
						
						<tr>
							<td class="td_left"><label for="name">商品名：</label></td>
							<td class="td_right"><input type="text" name="name" id="name"
								placeholder="请输入商品名1-100个字符" value="${order.name}"/>
								<span id="s_name"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="price">商品单价：</label></td>
							<td class="td_right"><input type="text" name="price" id="price"
								placeholder="请输入价格0-9999999999" value="${order.price}"/>
								<span id="s_price"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">购买数量：</label></td>
							<td class="td_right"><input type="text" name="number" id="number"
								placeholder="请输入存量0-9999999999" value="${order.number}"/>
								<span id="s_number"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="total_price">商品总价：</label></td>
							<td class="td_right"><input type="text" name="total_price" id="totalPrice"
								placeholder="请输入价格0-9999999999" value="${order.total_price}"/>
								<span id="s_totalPrice"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="addre">地址：</label></td>
							<td class="td_right">
							<textarea name="address" id="address" rows="20" cols="15" >${order.address}</textarea>
							</td>
						</tr>
					</table>
					<input class="btn_submit" type="submit" name="submit" value="修改" />

				</form>
			</div>
		</div>
	</div>

	<script src="js/Copy of addOrder.js"></script>
</body>
</html>










