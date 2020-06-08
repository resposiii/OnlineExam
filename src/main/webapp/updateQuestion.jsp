<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/updateQuestion.css" rel="stylesheet" type="text/css" />
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<%--
<h1>更新用户信息</h1>
<form action="mainServlet?method=update" method="post">
	<input type="hidden" name="id" value="${employee.id }">
		username：<input type="text" name="username" value="${employee.username }"><br>
		password：<input type="text" name="password" value="${employee.password }"><br>
	<input type="submit" value="提交">
</form>
 --%>
<div class="body">
    <div class="header">
        <h3></h3>
    </div>
    <div class="main">
        <h2>修改试题</h2>
        <br>
        <form method="post" action="updateQuestion">
            <input type="hidden" name="id" value="${question.id }">
            <p class="in"><span class="glyphicon glyphicon-tag"></span>题目：</p>
                    <input class="form-control" name="title"
                           id="form-control" value="${question.title}">
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>科目：</p>
                    <input class="form-control" name="subject"
                           id="form-control" value="${question.subject}">
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>选项A：</p>
                    <input class="form-control" name="ans1"
                           id="form-control" value="${question.ans1}">
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>选项B：</p>
                    <input class="form-control" name="ans2"
                           id="form-control" value="${question.ans2}">
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>选项C：</p>
                    <input class="form-control" name="ans3"
                           id="form-control" value="${question.ans3}">
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>选项D：</p>
                    <input class="form-control" name="ans4"
                           id="form-control" value="${question.ans4}">
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>类型：</p>
            <input type="radio" name="types" checked="checked" value="选择">选择
            <br><br><br><br>
            <p class="in"><span class="glyphicon glyphicon-tag"></span>答案：</p>
                <input type="radio" name="answer" id="inlineRadio1" value="A"> A
                <input type="radio" name="answer" id="inlineRadio2" value="B"> B
                <input type="radio" name="answer" id="inlineRadio3" value="C"> C
                <input type="radio" name="answer" id="inlineRadio3" value="D"> D
                <button type="submit" class="btn btn-primary">提交更改</button>
        </form>
    </div>
</div>
</body>
</html>