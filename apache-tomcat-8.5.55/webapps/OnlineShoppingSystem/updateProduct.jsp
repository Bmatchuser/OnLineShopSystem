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
    
    <title>更新商品</title>
    
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
			<p class="reg_left_firstp">修改商品</p>
			<p class="reg_left_secondp">UPDATE PRODUCT</p>
		</div>

		<div class="reg_center" style="margin-left: 150px">
			<div class="reg_form">
				<form id="form" action="servlet/UpdateProductServlet" method="post">
					<table>
						<tr>
							<td class="td_left"><label>类型：</label></td>
							<td class="td_right">
								<select name="type" id="type" >
									<option >电脑办公</option>
									<option selected="selected">手机数码</option>
									<option >蓝牙音箱</option>
									<option >蓝牙耳机</option>
								</select>
							<td>
							<input type="hidden" name="id" value="${product.id} ">
							</td>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="name">商品名：</label></td>
							<td class="td_right"><input type="text" name="name" id="name"
								placeholder="请输入商品名2-100个汉字" value="${product.name}"/>
								<span id="s_name"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="password">供应商：</label></td>
							<td class="td_right"><input type="text" name="company" id="company"
								placeholder="请输入供应商名" value="${product.company}"/>
								<span id="s_company"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="price">价格：</label></td>
							<td class="td_right"><input type="text" name="price" id="price"
								placeholder="请输入价格0-9999999999" value="${product.price}"/>
								<span id="s_price"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label for="tel">存量：</label></td>
							<td class="td_right"><input type="text" name="number" id="number"
								placeholder="请输入存量0-9999999999" value="${product.number}"/>
								<span id="s_number"></span>
							</td>
						</tr>
						<tr>
							<td class="td_left"><label>照片编号：</label></td>
							<td class="td_right">
								<input type="text" name="picture" id="picture" value="${product.picture}" placeholder="001.jpg-010.jpg"/>
								<span id="s_picture"></span>
							</td>
							
						</tr>
						
					</table>
						<input class="btn_submit" type="submit" name="submit" value="更新" />	
				</form>
			</div>
		</div>

		
	</div>
	<script>
		document.getElementById("type").value = '${product.type}'
	</script>
	<script src="js/updete_product.js"></script>
</body>
</html>
