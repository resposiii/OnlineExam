<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25 0025
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>success</title>
    <style type="text/css">
        a{
            margin-left:600px;
        }
    </style>
</head>
<body>
<c:choose>
<%--<c:when test="${sessionScope.url=='/addSubject'}">--%>
<%--<h1 align="center">录入试题,成功!!!</h1>--%>
<%--<a href="teacherIndex.jsp">5秒后自动跳转首页，如未跳转点击这里</a>--%>
<%--        <%response.setHeader("refresh", "5,url=teacherIndex.jsp"); %>--%>
<%--</c:when>--%>
<%--<c:when test="${sessionScope.url=='/updateSubject' }">--%>
<%--<h1 align="center">修改试题,成功!!!</h1>--%>
<%--<a href="/controlSubject">5秒后跳转管理试题页面,如未点击跳转这里</a>--%>
<%--        <%response.setHeader("refresh", "5,url=controlSubject"); %>--%>
<%--</c:when>--%>
<%--<c:when test="${sessionScope.url=='/deleteSubject' }">--%>
<%--<h1 align="center">删除试题,成功!!!</h1>--%>
<%--<a href="/controlSubject">5秒后跳转管理试题页面,如未点击跳转这里</a>--%>
<%--        <%response.setHeader("refresh", "5,url=controlSubject"); %>--%>
<%--</c:when>--%>
<%--<c:when test="${sessionScope.url=='/updateStudent' }">--%>
<%--<h1 align="center">修改学生,成功!!!</h1>--%>
<%--<a href="/findStudent">5秒后跳转管理学生页面,如未点击跳转这里</a>--%>
<%--        <%response.setHeader("refresh", "5,url=findStudent"); %>--%>
<%--</c:when>--%>
<c:when test="${sessionScope.url=='/deleteStudent' }">
<h1 align="center">删除学生,成功!!!</h1>
        <%response.setHeader("refresh", "0,url=findStudent"); %>
</c:when>

</c:choose>
</html>
