<%--
  Created by IntelliJ IDEA.
  User: weishuai
  Date: 2021/3/3
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}/test?methodName=addCourse">新建课程</a>
    <a href="${pageContext.request.contextPath}/test?methodName=findByName">根据课程名称查找</a>
    <a href="${pageContext.request.contextPath}/test?methodName=findByStatu">根据课程状态查找</a>

</body>
</html>
