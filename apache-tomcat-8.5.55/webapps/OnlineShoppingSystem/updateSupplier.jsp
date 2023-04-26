<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" href="../css/reg.css">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新供应商</title>
    
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
		.center{
			   margin-left: 250px;
			   margin-top: 30px;
			}
	</style>
  </head>
  
<body>
	<div class="reg_layout">
		<div class="reg_left">
			<p class="reg_left_firstp">修改供应商</p>
			<p class="reg_left_secondp">UPDATE SUPPLIER</p>
		</div>
		
		<div class="reg_center center" style="margin-left: 100px">
			<div class="reg_form">
				<div style="margin-bottom: 20px">
					<h2 style="padding-left: 50px">供应商信息修改</h2>
				</div>
				<form id="form" action="servlet/UpdateSupplierServlet" method="post">
					<table>
						<tr>
							<td class="td_left"><label for="name">姓名：</label></td>
							<td class="td_right"><input type="text" name="name" id="name"
								value="${supplier.name}" />
								<span id="s_name"></span>
							</td>
							<td>
								<input type="hidden" name="id" value="${supplier.id} ">
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">手机号：</label></td>
							<td class="td_right"><input type="text" name="tel" id="tel"
								value="${supplier.tel}" />
								<span id="s_tel"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="addre">地址：</label></td>
							<td class="td_right">
							<textarea name="address" id="address" rows="20" cols="15" >${supplier.address}</textarea>
							<span id="s_address"></span>
							</td>
						</tr>
					</table>
						<input class="btn_submit" type="submit" name="submit" value="修改" />
						
				</form>
			</div>
		</div>
	</div>

	<script src="js/add_supplier.js"></script>
</body>
</html>










