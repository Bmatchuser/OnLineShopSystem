<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>订单信息</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
body {
	width: 900px;
	margin: auto;
}

caption,th,td {
	text-align: center;
}
</style>
<script type="text/javascript">
	function deleteOrder(id) {
		if (confirm("你确定要取消吗！")) {
			location.href = "${pageContext.request.contextPath}/servlet/DelOrderOwnServlet?id="+ id;
		}
	}
	function affirmBuy(id) {
		if (confirm("你要确认支付吗！")) {
			location.href = "${pageContext.request.contextPath}/servlet/AffirmGoodsServlet?id="+ id;
		}
	}
	function affirmGoods(id) {
		if (confirm("你要确认收货吗！")) {
			location.href = "${pageContext.request.contextPath}/servlet/AffirmGoodsServlet?id="+ id;
		}
	}
	function alreadyBuy(id) {
		if (confirm("你已确认收货了！")) {
		
		}
	}
	function alreadyDel(id) {
		if (confirm("你已取消订单了！")) {
			
		}
	}
	window.onload = function() {
		//给删除选中按钮添加单击事件
		document.getElementById("deleteSelect").onclick = function() {
			if (confirm("你确定要删除吗？")) {
				flag = false;
				var cbs = document.getElementsByName("checkId");
				for ( var i = 0; i < cbs.length; i++) {
					if (cbs[i].checked) {
						flag = true;
					}
				}
				if (flag) {
					document.getElementById("form").submit();
				}

			}
		}
		//给全选按钮添加单击事件
		document.getElementById("firstCheckBox").onclick = function() {
			//获取所有的checkbox
			var cbs = document.getElementsByName("checkId");
			//循环使所有的checkBox的状态都和firstCheckBox的状态一样
			for ( var i = 0; i < cbs.length; i++) {
				cbs[i].checked = this.checked;
			}
		}
	}
</script>
</head>


<body>
	<h3 style="text-align: center">订单信息列表</h3>

	<div style="float: left">
		<form
			action="${pageContext.request.contextPath}/servlet/OrderOwnListServlet"
			class="form-inline" method="post">
			<div class="form-group">
				<label for="exampleInputName2">姓名</label> <input name="username"
					style="width: 150px;" type="text" class="form-control"
					id="exampleInputName2" value="${condition.username[0]}">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail2">电话号码</label> <input name="tel"
					style="width: 150px;" type="text" class="form-control"
					id="exampleInputEmail2" value="${condition.tel[0]}">
			</div>
			<div class="form-group">
				<label for="exampleInputName2">地址</label> <input name="address"
					style="width: 150px;" type="text" class="form-control"
					id="exampleInputName2" value="${condition.address[0]}">
			</div>
			<button type="submit" class="btn btn-default">查询</button>
		</form>
	</div>
	<div style="float: right">
   		<a href="${pageContext.request.contextPath}/servlet/ProductsShowServlet" style="font-size: 20px;color: blue">商品首页</a>
   	</div>

	<form id="form" action="${pageContext.request.contextPath}/servlet/DelSelectOrderServlet" method="post">
		<table align="center" class="table table-hover user_table">
			<tr>
				<th><input type="checkbox" id="firstCheckBox" />
				</th>
				<th>编号</th>
				<th>用户名</th>
				<th>电话</th>
				<th>地址</th>
				<th>商品名称</th>
				<th>商品单价</th>
				<th>商品数量</th>
				<th>商品总价</th>
				<th>操作</th>
				<th>操作</th>
			</tr>

			<c:forEach items="${pb.pageList}" var="order" varStatus="s">
				<tr>
					<td><input type="checkbox" name="checkId" value="${order.id}" />
					</td>
					<td>${s.count}</td>
					<td>${order.username}</td>
					<td>${order.tel}</td>
					<td>${order.address}</td>
					<td>${order.name}</td>
					<td>${order.price}</td>
					<td>${order.number}</td>
					<td>${order.total_price}</td>
					<td>
					<c:if test="${order.status == 0}">
							<a  class="btn btn-danger"href="javascript:affirmBuy(${order.id});">支付</a>
					</c:if>
					<c:if test="${order.status == 1}">
							<a  class="btn btn-danger" >待发货</a>
					</c:if>
					<c:if test="${order.status == 2}">
							<a  class="btn btn-danger"  href="javascript:affirmGoods(${order.id});">确认收货</a>
					</c:if>
					<c:if test="${order.status == 3}">
							<a  class="btn btn-danger"  href="javascript:alreadyBuy(${order.id});">已收货</a>
					</c:if>
					<c:if test="${order.status == 4}">
							<a  class="btn btn-danger"  href="javascript:alreadyDel(${order.id});">已取消</a>
					</c:if>
					</td>
					<td>
						<a class="btn btn-danger" href="javascript:deleteOrder(${order.id});">取消订单</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>


	<!-- 分页 -->
	<nav aria-label="Page navigation">
	<ul class="pagination">
		<c:if test="${pb.currentPage == 1}">
			<li class="disabled">
		</c:if>
		<c:if test="${pb.currentPage != 1}">
			<li>
		</c:if>
		<a
href="${pageContext.request.contextPath}/servlet/OrderOwnListServlet?currentPage=${pb.currentPage-1}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}"
			aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a>
		</li>
		<c:forEach begin="1" end="${pb.totalPage}" var="i">

			<c:if test="${pb.currentPage==i}">
				<li class="active"><a
					href="${pageContext.request.contextPath}/servlet/OrderOwnListServlet?currentPage=${i}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}">
						${i} </a></li>
			</c:if>
			<c:if test="${pb.currentPage!=i}">
				<li><a
					href="${pageContext.request.contextPath}/servlet/OrderOwnListServlet?currentPage=${i}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}">
						${i} </a></li>
			</c:if>
		</c:forEach>
		<c:if test="${pb.currentPage == pb.totalPage}">
			<li class="disabled">
		</c:if>
		<c:if test="${pb.currentPage != pb.totalPage}">
			<li>
		</c:if>
		<a
			href="${pageContext.request.contextPath}/servlet/OrderOwnListServlet?currentPage=${pb.currentPage+1}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}"
			aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a>
		</li>
		<span style="margin-left:5px;font-size: 25px;">
			共${pb.totalCount} 条记录，${pb.totalPage}页。 </span>
	</ul>

	</nav>


</body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>
