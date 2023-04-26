<%--
  Created by IntelliJ IDEA.
  User: weishuai
  Date: 2021/3/5
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    文件上传三要素
    1.表单提交方式必须为post
    2.表单的enctype属性必须为：multipart/from-data
    3.表单中必须有文件上传项
--%>
<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/upload">
    <input type="file" name="upload"><br>
    <input type="text" name="name"><br>
    <input type="password" name="password"><br>
    <input type="submit" value="文件上传">
    <img src="/upload/71705f824d9b49068df17e5f2e2edb4d_4I4A7390.jpg">
</form>
</body>
</html>
