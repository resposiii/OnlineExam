<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/5 0005
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${students}" var="students">
    ${students.studentID}
    ${students.studentName}
    <form method="post" action="deleteStudent?studentID=${students.studentID}">
        <input type="submit" value="删除">
    </form>
</c:forEach>
</body>
</html>
