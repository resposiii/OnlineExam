<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/29 0029
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Teacher</title>
</head>
<body>
<form action="teacher/t_login" method="post">
    用户名：<input type="text" name="teacherName"/>
    密码：<input type="text" name="teacherPassword"/>
    <input type="submit" value="登录">
</form>
<a href="teacher/t_register">注册</a>
</body>
</html>
