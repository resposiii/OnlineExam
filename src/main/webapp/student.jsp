<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/6 0006
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>   
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/student.css" rel="stylesheet" type="text/css" />
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<html>
<head>
    <title>student</title>
    <base href="<%=basePath%>">
</head>
<body>
<style>
    p{

        margin-left:10px;
        margin-top:10px;
    }
</style>
<div class="body">
    <div class="header">
        <h3>在线考试系统学生端</h3>
        <p><span class="glyphicon glyphicon-user"></span>${student.studentName}<a href="s_login.jsp">注销</a></p>
    </div>
    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#student_message" data-toggle="tab">
                个人信息
            </a>
        </li>
        <li>
            <a href="#score" data-toggle="tab">
                成绩信息
            </a>
        </li>
        <li>
            <a href="#notice" data-toggle="tab">
                 公告信息
            </a>
        </li>
        <li><a href="${pageContext.request.contextPath}/exam">在线考试</a></li>

    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="student_message">
            <table class="table table-bordered">
                <thead>
                <th>学生号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>身份证号</th>
                <th>操作</th>
                </thead>
                <tbody>
                <tr>
                    <td>${student.studentID}</td>
                    <td>${student.studentName}</td>
                    <td>${student.gender}</td>
                    <td>${student.cardID}</td>
                    <td>
                        <a href="beforeUpdateStudent?studentID=${student.studentID}">
                            更新
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="tab-pane fade" id="notice">
            <table class="table table-bordered">
                <thead>
                <th>编号</th>
                <th>公告</th>
                </thead>
                <tbody>
                <c:forEach items="${notices}" var="notices">
                    <tr>
                        <td>${notices.id}</td>
                        <td>${notices.title}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="tab-pane fade" id="score">
            <table class="table table-bordered">
                <thead>
                <th>考试编号</th>
                <th>学号</th>
                <th>姓名</th>
                <th>成绩</th>
                </thead>
                <tbody>
                <c:forEach items="${scores}" var="scores">
                    <tr>
                        <td>${scores.id}</td>
                        <td>${scores.studentID}</td>
                        <td>${scores.studentName}</td>
                        <td>${scores.score}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="tab-pane fade" id="exam">
        </div>
    </div>

    <div style="height:200px"></div>
</div>
</body>
</html>
