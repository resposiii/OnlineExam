<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/26 0026
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
    <form action="s_register" method="post">
        用户名：<input type="text" name="studentName"/>
        <br>
        性别：<input type="text" name="gender">
        <br>
        身份证号：<input type="text" name="cardID">
        <br>
        密码：<input type="text" name="studentPassword"/>
        <br>
        <input type="submit" value="注册">
    </form>
</body>
</html>
