<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<%
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="js/login.js"></script>
	<link rel="stylesheet" href="css/login.css">

  </head>
  
 

<body>
	<div class="reg_layout">
		<div class="reg_left">
			<p class="reg_left_firstp">登录</p>
			<p class="reg_left_secondp">USER LOGIN</p>
		</div>

		<div class="reg_center">
			<div class="reg_form">
				<form id="form" action="servlet/LoginServlet" method="post">
					<table>
						<tr>
							<td class="td_left"><label  for="username">用户名：</label></td>
							<td class="td_right">
								<input type="text" name="username" id="username"  placeholder="手机号或者邮箱" value="${user.username}"/>
								<span id="s_username"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="password">密码：</label></td>
							<td class="td_right"><input type="password" name="password" id="password"
								placeholder="请输入密码" value="${user.password}" />
								<span id="s_password"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="checkCode">验证码</label></td>
							<td class="td_right check_input"><input type="text" name="checkCode" id="checkCode"
								placeholder="请输入验证码" />
							</td>							
						</tr>
					</table>
					<div>
							<img  src="servlet/CheckCodeServlet" class="img_check" id="checkCode_img">
					</div>
					<button type="submit" class="btn btn-success btn_submit">登录</button>
					<div style="margin-left: 100px"><%=request.getSession().getAttribute("checkCode_error") == null? "" : request.getSession().getAttribute("checkCode_error") %></div>
					<div style="margin-left: 100px"	><%=request.getSession().getAttribute("user_error") == null ? "" : request.getSession().getAttribute("user_error") %></div>
					<div style="margin-left: 100px;color: red;"><%=session.getAttribute("login_msg") == null ? "" : session.getAttribute("login_msg")%></div>
				</form>
			</div>
		</div>

		<div class="reg_right">
			<p >
				还未注册？<a href="reg.jsp" >立即注册</a>
			</p>
			<p >
				<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet?type=电脑办公&flag=1" style="float: right;color: red">游客访问</a>
			</p>
		</div>
		
	</div>
	<script src="js/login.js"></script>
	
	
	
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
