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
</body>
</html>