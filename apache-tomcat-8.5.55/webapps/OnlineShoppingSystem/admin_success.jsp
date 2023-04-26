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
    <title>登陆成功</title>

    <!-- Bootstrap -->	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
 
    <style type="text/css">
    	body{
    		
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
 			location.href="${pageContext.request.contextPath}/servlet/delUserServlet?id="+id;
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
	  	<img src="images/welcome.png" width=100% height=100% border="1"/>
	</div>
	
  </body>
  <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>
