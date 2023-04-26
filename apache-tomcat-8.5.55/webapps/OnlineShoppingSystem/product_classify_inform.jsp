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
    <title>商品管理</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
        body{
            width: 100%;
            margin: auto;
        }

        caption,th,td{
            text-align: center;
        }

    </style>
    <script type="text/javascript">
        function deleteUser(id){
            if(confirm("你确定要删除吗！"))
            {
                location.href="${pageContext.request.contextPath}/servlet/DelProductServlet?id="+id;
            }
        }
        window.onload = function(){
            //给删除选中按钮添加单击事件
            document.getElementById("deleteSelect").onclick = function(){
                if(confirm("你确定要删除吗？")){
                    flag=false;
                    var cbs = document.getElementsByName("checkId");
                    for ( var i = 0; i < cbs.length; i++) {
                        if(cbs[i].checked){
                            flag=true;
                        }
                    }
                    if(flag){
                        document.getElementById("form").submit();
                    }

                }
            }
            //给全选按钮添加单击事件
            document.getElementById("firstCheckBox").onclick = function(){
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
	<div class="col-lg-2" style="height: 600px;background-color: #1c232f">
  			<div class="text-center" style="height: 50px; line-height: 50px;">
  				<a href="#" style="text-decoration: none;color: white; display: block;">
  					管理员后台
  				</a>
  			</div>
  			<div class="row">
  				<div style="height: 1px;background-color: black;width: 100%;"></div>
  			</div>
  			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		  <div class="panel panel-default">
		    <div  class="panel-heading" role="tab" id="headingTwo">
		        <a style="font-size: large; margin-left: 40px" class="collapsed" href="${pageContext.request.contextPath}/servlet/PCIListServlet">
		      		   商品管理
		        </a>
		    </div>
					    <%-- <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					      <ul class="list-group" style="text-align: center;>
				     		<li class="list-group-item"><a>商品列表</a></li>
				     		<li class="list-group-item"><a>商品列表</a></li>
					      </ul>
					    </div> --%>
		  </div>
		  <div class="panel panel-default">
		     <div  class="panel-heading" role="tab" id="headingTwo">
		        <a style="font-size: large; margin-left: 40px" class="collapsed" href="${pageContext.request.contextPath}/servlet/GetUserByPageServlet" >
		      		   会员管理
		        </a>
		    </div>
					    <%-- <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					      <ul class="list-group" style="text-align: center;>
				     		<li class="list-group-item">商品列表</li>
				     		<li class="list-group-item">商品列表</li>
					     </ul>
					    </div> --%>
		  </div>
		  <div class="panel panel-default">
		     <div  class="panel-heading" role="tab" id="headingTwo">
		        <a style="font-size: large; margin-left: 40px" class="collapsed" href="${pageContext.request.contextPath}/servlet/OrderListServlet" >
		      		   订单管理
		        </a>
		    </div>
					    <%-- <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					      <ul class="list-group" style="text-align: center;>
				     		<li class="list-group-item">商品列表</li>
				     		<li class="list-group-item">商品列表</li>
					     </ul>
					    </div> --%>
		  </div>
		  <div class="panel panel-default">
		     <div  class="panel-heading" role="tab" id="headingTwo">
		        <a style="font-size: large; margin-left: 40px" class="collapsed" href="${pageContext.request.contextPath}/servlet/SupplierListServlet" >
		      		   货源管理
		        </a>
		    </div>
					    <%-- <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					     	<ul class="list-group" style="text-align: center;>
					     		<li class="list-group-item">商品列表</li>
					     		<li class="list-group-item">商品列表</li>
					     	</ul>
					    </div> --%>
		  </div>
		</div>
  	</div>
    		
    		
	<div class="col-lg-10" style="height: 600px;background-color: white">	
		<h3 style="text-align: center">商品信息列表</h3>
			
		<div style="float: left">
		    <form action="${pageContext.request.contextPath}/servlet/PCIListServlet" class="form-inline" method="post">
		        <div class="form-group">
		            <label for="exampleInputName2">商品类型</label>
		            <input name="type" style="width: 80px;" type="text" class="form-control" id="exampleInputName2" value="${condition.type[0]}">
		        </div>
		        <div class="form-group">
		            <label for="exampleInputEmail2">商品名称</label>
		            <input name="name" style="width: 80px;" type="text" class="form-control" id="exampleInputEmail2" value="${condition.name[0]}">
		        </div>
		        <div class="form-group">
		            <label for="exampleInputName2">供应商</label>
		            <input name="company" style="width: 80px;" type="text" class="form-control" id="exampleInputName2" value="${condition.company[0]}" >
		        </div>
		        <button type="submit" class="btn btn-default">查询</button>
		        
		    </form>
		</div>
		<div style="float:left">
			 	<a href="${pageContext.request.contextPath}/servlet/PCIListServlet?type=电脑办公" class="btn btn-primary" style="background-color: red;width: 70px">电脑办公</a>
			 	<a href="${pageContext.request.contextPath}/servlet/PCIListServlet?type=手机数码" class="btn btn-primary" style="background-color: red;width: 70px">手机数码</a>
			 	<a href="${pageContext.request.contextPath}/servlet/PCIListServlet?type=蓝牙音箱" class="btn btn-primary" style="background-color: red;width: 70px">蓝牙音箱</a>
				<a href="${pageContext.request.contextPath}/servlet/PCIListServlet?type=蓝牙耳机" class="btn btn-primary" style="background-color: red;width: 70px">蓝牙耳机</a>
		</div>
		<div style="float: right">
		    <a href="${pageContext.request.contextPath}/add_product.jsp" class="btn btn-primary" style="width: 70px">添加商品</a>
		    <a href="javascript:void(0);" id="deleteSelect" class="btn btn-primary" style="width: 70px">删除选中</a>
		    <a href="${pageContext.request.contextPath}/servlet/UserLogOutServlet" class="btn btn-primary" style="width: 70px;height:35px;   background-color: red; float: right;color: white;border: none">退出</a>
		</div>
		
		<form id="form" action="${pageContext.request.contextPath}/servlet/DelSelectProductServlet" method="post">
		    <table align="center" class="table table-hover user_table">
		
		        <tr>
		            <th><input type="checkbox" id="firstCheckBox" /></th>
		            <th>编号</th>
		            <th>类型</th>
		            <th>商品名</th>
		            <th>供应商</th>
		            <th>价格</th>
		            <th>存量</th>
		            <th>照片</th>
		            <th>操作</th>
		        </tr>
		
		        <c:forEach items="${pb.pageList}" var="product" varStatus="s">
		            <tr>
		                <td><input type="checkbox" name="checkId" value="${product.id}"/></td>
		                <td>${s.count}</td>
		                <td>${product.type}</td>
		                <td>${product.name}</td>
		                <td>${product.company}</td>
		                <td>${product.price}</td>
		                <td>${product.number}</td>
		                <td>${product.picture}</td>
		                <td>
		                    <a class="btn btn-info" href="${pageContext.request.contextPath}/servlet/FindProductServlet?id=${product.id}">修改</a>
		                    <a class="btn btn-danger" href="javascript:deleteUser(${product.id});">删除</a>
		                    
		                </td>
		            </tr>
		        </c:forEach>
		    </table>
		</form>
		
		
		<!-- 分页 -->
		<nav aria-label="Page navigation">
		    <ul class="pagination" >
		        <c:if test="${pb.currentPage == 1}">
		        	<li class="disabled">
		        </c:if>
		        <c:if test="${pb.currentPage != 1}">
		        	<li>
		        </c:if>
		        <a href="${pageContext.request.contextPath}/servlet/PCIListServlet?currentPage=${pb.currentPage-1}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}&type=${types}" aria-label="Previous">
		                <span aria-hidden="true">&laquo;</span>
		        </a>
		        </li>
		        <c:forEach begin="1" end="${pb.totalPage}" var="i">
		            <c:if test="${pb.currentPage==i}">
		                <li class="active">
		                    <a href="${pageContext.request.contextPath}/servlet/PCIListServlet?currentPage=${i}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}&type=${types}">
		                            ${i}
		                    </a>
		                </li>
		            </c:if>
		            <c:if test="${pb.currentPage!=i}">
		                <li>
		                    <a href="${pageContext.request.contextPath}/servlet/PCIListServlet?currentPage=${i}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}&type=${types}">
		                            ${i}
		                    </a>
		                </li>
		            </c:if>
		        </c:forEach>
		        <c:if test="${pb.currentPage == pb.totalPage}">
		        	<li class="disabled">
		        </c:if>
		        <c:if test="${pb.currentPage != pb.totalPage}">
		        		<li>
		        </c:if>
		            <a href="${pageContext.request.contextPath}/servlet/PCIListServlet?currentPage=${pb.currentPage+1}&pageRows=5&name=${condition.name[0]}&tel=${condition.tel[0]}&email=${condition.email[0]}&type=${types}" aria-label="Next">
		                <span aria-hidden="true">&raquo;</span>
		            </a>
		        </li>
		        <span style="margin-left:5px;font-size: 25px;">
			    	共${pb.totalCount} 条记录，${pb.totalPage}页。
			    </span>
			   
		    </ul>
		
		</nav>
	</div>

</body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>










