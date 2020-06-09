<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/update.css" rel="stylesheet" type="text/css" />
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
        <h2>更新信息</h2>
        <br>
        <form action="updateTeacher" method="post">
            <input type="hidden" name="teacherID" value="${teacher.teacherID}">
            <p class="in"><span class="glyphicon glyphicon-user"></span>姓名：</p>
            <input type="text" name="teacherName" class="form-control" id="form-control" value="${teacher.teacherName}">
            <br/><br/><br/><br/>
            <p class="in"><span class="glyphicon glyphicon-user"></span>性别：</p>
            <input type="text" name="gender" class="form-control" id="form-control" value="${teacher.gender }">
            <br/><br/><br/><br/>
            <p class="in"><span class="glyphicon glyphicon-lock"></span>密码：</p>
            <input type="text" name="teacherPassword" class="form-control" id="form-control" value="${teacher.teacherPassword}">
            <br/><br/>
            <input type="submit" class="btn btn-warning" id="btn" value="确定修改">
            <br/><br/>
        </form>
    </div>
</div>
</body>
</html>