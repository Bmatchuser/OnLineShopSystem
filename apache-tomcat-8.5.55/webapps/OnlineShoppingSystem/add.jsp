<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path;
	path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" href="../css/reg.css">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加</title>
    
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
			<p class="reg_left_firstp">添加用户</p>
			<p class="reg_left_secondp">ADD USER</p>
		</div>

		<div class="reg_center" style="margin-left: 150px">
			<div class="reg_form">
				<form id="form" action="AddUserServlet" method="post">
					<table>
						<tr>
							<td class="td_left"><label  for="username">用户名：</label></td>
							<td class="td_right">
								<input type="text" name="username" id="username"  placeholder="手机号或邮箱" />
								<span id="s_username"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="password">密码：</label></td>
							<td class="td_right"><input type="password" name="password" id="password"
								placeholder="请输入密码 6-12个字符" />
								<span id="s_password"></span>
							</td>
						</tr>
						
						<tr>
							<td class="td_left"><label for="email">Email：</label></td>
							<td class="td_right"><input type="email" name="email" id="email"
								placeholder="请输入Email"/>
								<span id="s_email"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="name">姓名：</label></td>
							<td class="td_right"><input type="text" name="name" id="name"
								placeholder="请输入真实姓名 2-4个汉字" />
								<span id="s_name"></span>
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
							<td class="td_left"><label>性别：</label></td>
							<td class="td_right"><input type="radio" name="gender" value="男" checked="checked"/>男 <input
								type="radio" name="gender" value="女" />女</td>
						</tr>
						
					</table>
						<input class="btn_submit" type="submit" name="submit" value="添加" />
						<div style="margin-left: 100px"><%=request.getSession().getAttribute("error") == null? "" : request.getSession().getAttribute("error") %></div>
					
				</form>
			</div>
		</div>

		
	</div>

	<script src="js/add_user.js"></script>
</body>
</html>
