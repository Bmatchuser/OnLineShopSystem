<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="./css/reg.css">
</head>

<body>
	<div class="reg_layout">
		<div class="reg_left">
			<p class="reg_left_firstp">新用户注册</p>
			<p class="reg_left_secondp">USER REGISTER</p>
		</div>

		<div class="reg_center">
			<div class="reg_form">
				<form id="form" action="servlet/RegUserServlet" method="post">
					<table>
						<tr>
							<td class="td_left"><label  for="username">用户名：</label></td>
							<td class="td_right">
								<input type="text" name="username" id="username"  placeholder="请输入账号名 6-12个字符" value="${form.username}"/>
								<span  id="s_username"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="password">密码：</label></td>
							<td class="td_right"><input type="password" name="password" id="password"
								placeholder="请输入密码 6-12个字符" value="${form.password}" />
								<span id="s_password"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label >确认密码：</label></td>
							<td class="td_right"><input type="password" name="password2" id="password2"
								placeholder="请输入密码 6-12个字符" value="${form.password2}"/>
								<span id="s_password2"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="email">Email：</label></td>
							<td class="td_right"><input type="email" name="email" id="email"
								placeholder="请输入Email" value="${form.email}"/>
								<span id="s_email"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="name">姓名：</label></td>
							<td class="td_right"><input type="text" name="name" id="name" value="${form.name}"
								placeholder="请输入真实姓名 2-4个汉字" value="${form.name}"/>
								<span class="span_error" id="s_name"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">手机号：</label></td>
							<td class="td_right"><input type="text" name="tel" id="tel"
								placeholder="请输入手机号" value="${form.tel}"/>
								<span id="s_tel"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label>性别：</label></td>
							<td class="td_right"><input type="radio" name="gender" value="男"  checked="checked"/>男 <input
								type="radio" name="gender" value="女" />女</td>
						</tr>
					</table>
					<input class="btn_submit" type="submit" name="submit" value="提交" />
					<div>
					<div style="margin-left: 100px"><%=request.getSession().getAttribute("error") == null ? "" : request.getSession().getAttribute("error") %></div>
						
					</div>
				</form>
			</div>
		</div>

		<div class="reg_right">
			<p >
				已有账号？<a href="login.jsp" >立即登录</a>
			</p>
		</div>
	</div>

	<script src="./js/reg.js"></script>
</body>
</html>







