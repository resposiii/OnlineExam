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
<c:when test="${sessionScope.url=='/updateQuestion' }">
<h1 align="center">更新,成功!!!</h1>
        <a href="t_login?teacherName=${sessionScope.teacher.teacherName}
        &teacherPassword=${sessionScope.teacher.teacherPassword}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/deleteQuestion' }">
<h1 align="center">删除,成功!!!</h1>
<a href="t_login?teacherName=${sessionScope.teacher.teacherName}
        &teacherPassword=${sessionScope.teacher.teacherPassword}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/deleteNotice' }">
<h1 align="center">删除公告,成功!!!</h1>
<a href="t_login?teacherName=${sessionScope.teacher.teacherName}
        &teacherPassword=${sessionScope.teacher.teacherPassword}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/student' }">
        <%response.setHeader("refresh", "0,url=student.jsp"); %>
</c:when>
<c:when test="${sessionScope.url=='/updateStudent' }">
<h1 align="center">更新成功，重新登陆!!!</h1>
        <%response.setHeader("refresh", "1,url=s_login.jsp"); %>
</c:when>
<c:when test="${sessionScope.url=='/addQuestion' }">
<h1 align="center">添加试题,成功!!!</h1>
        <a href="t_login?teacherName=${sessionScope.teacher.teacherName}
        &teacherPassword=${sessionScope.teacher.teacherPassword}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/addNotice' }">
<h1 align="center">添加公告,成功!!!</h1>
<a href="t_login?teacherName=${sessionScope.teacher.teacherName}
        &teacherPassword=${sessionScope.teacher.teacherPassword}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/addQuestions' }">
<h1 align="center">添加试题,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/addNotices' }">
<h1 align="center">添加公告,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/addStudent' }">
<h1 align="center">添加用户,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>
<c:when test="${sessionScope.url=='/addTeacher' }">
<h1 align="center">添加用户,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>

<c:when test="${sessionScope.url=='/deleteStudent' }">
<h1 align="center">删除用户,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>

<c:when test="${sessionScope.url=='/deleteTeacher'}">
<h1 align="center">删除用户,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>

<c:when test="${sessionScope.url=='/deleteQuestions' }">
<h1 align="center">删除,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>

<c:when test="${sessionScope.url=='/deleteNotices'}">
<h1 align="center">删除,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>

<c:when test="${sessionScope.url=='/updateStudents'}">
<h1 align="center">更新,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>

<c:when test="${sessionScope.url=='/updateTeacher'}">
<h1 align="center">更新,成功!!!</h1>
<a href="a_login?adminName=${sessionScope.admin.adminName}
        &password=${sessionScope.admin.password}">返回</a>
</c:when>
</c:choose>
</html>
