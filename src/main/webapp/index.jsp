<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/26 0026
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
   <form action="student/s_login" method="post">
       用户名：<input type="text" name="studentName"/>
       密码：<input type="text" name="studentPassword"/>
       <input type="submit" value="登录">
   </form>
    <a href="student/registerPage">注册</a>
    <br>
    <a href="t_login.jsp">教师登录</a>
    <a href="a_login.jsp">管理员登录</a>
    <a href="student/score?studentID=2018001">成绩</a>
    <a href="student/exam">exam</a>
    <a href="addTitle.jsp">addTitle</a>
<br>
    <a href="admin/findStudent">findStudent</a>
</body>
</html>
