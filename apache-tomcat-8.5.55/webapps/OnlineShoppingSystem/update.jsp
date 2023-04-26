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
    
    <title>更新</title>
    
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
		<div style="margin-left: 10px;margin-top: 10px">
			<p class="reg_left_firstp">修改用户</p>
			<p class="reg_left_secondp">UPDATE USER</p>
		</div>
	
	<div class="reg_center center" style="margin-left: 300px;margin-top: 0px">
			
			<div class="reg_form" >
				<div style="margin-bottom: 20px">
					<h2 style="padding-left: 50px">用户信息修改</h2>
				</div>
				<form id="form" action="servlet/UpdateUserServlet" method="post">
					<table>
						<tr>
							<td>
								<input type="hidden" name="username" id="username"  value="${admin.username}"/>
								<span id="s_username"></span>
							</td>
							<td>
								<input type="hidden" name="id" value="${user.id} ">
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="password">密码：</label></td>
							<td class="td_right"><input type="password" name="password" id="password"
								value="${admin.password}" />
								<span id="s_password"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="email">Email：</label></td>
							<td class="td_right"><input type="email" name="email" id="email"
								value="${admin.email}" />
								<span id="s_email"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="name">姓名：</label></td>
							<td class="td_right"><input type="text" name="name" id="name"
								value="${admin.name}" />
								<span id="s_name"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">手机号：</label></td>
							<td class="td_right"><input type="text" name="tel" id="tel"
								value="${admin.tel}" />
								<span id="s_tel"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label>性别：</label></td>
							<td class="td_right">
								<c:if test="${admin.gender=='女'}">
									<input type="radio" name="gender" value="男" />男
									<input type="radio" name="gender" value="女"  checked="checked"/>女
								</c:if>
								<c:if test="${admin.gender=='男'}">
									<input type="radio" name="gender" value="男" checked="checked"/>男
									<input type="radio" name="gender" value="女"  />女
								</c:if>
								
							</td>
							
						</tr>
						
					</table>
						<input class="btn_submit" type="submit" name="submit" value="修改" />
						<div style="margin-left: 100px"	><%=request.getSession().getAttribute("user_update_error") == null ? "" : request.getSession().getAttribute("user_update_error") %></div>
						
				</form>
			</div>
		</div>
	</div>

	<script src="js/update_user.js"></script>
</body>
</html>
