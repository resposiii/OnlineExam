<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/2 0002
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="getScore" method="post">
    <%int i=1;%>
    <c:forEach items="${questions}" var="question">
        <tr><%out.print(i++);%>
                .(${question.subject})${question.title}</tr>
        <br/>
        <tr>
            <td><input type="radio"
                       name="subjectOption-${question.id}"
                       id="ans1-${question.id}" value="A">${question.ans1}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td><input type="radio"
                       name="subjectOption-${question.id}"
                       id="ans2-${question.id}" value="B">${question.ans2}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td><input type="radio"
                       name="subjectOption-${question.id}"
                       id="ans3-${question.id}" value="C">${question.ans3}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td><input type="radio"
                       name="subjectOption-${question.id}"
                       id="ans4-${question.id}" value="D">${question.ans4}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </tr>
        <hr />
    </c:forEach>
    <button type="submit">提交</button>
</form>
</body>
</html>
