<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Score</title>
    <style type="text/css">
        a{
            margin-left:700px;
            font-size:20px;
            color: blue;
        }
        div{
            margin-left: 450px;
            margin-right: 450px;
        }
    </style>
</head>
<body>
<c:if test="${sessionScope.scores<60 }">
<h1 align="center">革命尚未成功，同志仍需努力!</h1>
</c:if>
<c:if test="${sessionScope.scores>=60 and sessionScope.scores<90}">
<h1 align="center">考的还行，仍需努力!</h1>
</c:if>
<c:if test="${sessionScope.scores>=90}">
<h1 align="center">真棒!</h1>
</c:if>
<h1 align="center" style="color: red;">你的最终得分:${sessionScope.scores}</h1>
    <%int i=1;%>
<div>
    <c:forEach items="${questions}" var="question">
        <tr><%out.print(i++);%>
            .(${question.subject})${question.title}</tr>
        <br/>
        <tr>
            <td>A:${question.ans1}</td>&nbsp;&nbsp;
            <td>B:${question.ans2}</td>&nbsp;&nbsp;
            <td>C:${question.ans3}</td>&nbsp;&nbsp;
            <td>D:${question.ans4}</td>
        </tr>
        <br>
        <td>正确答案:${question.answer}</td>
        <hr/>
    </c:forEach>
</div>
<a href="addScore?studentName=${sessionScope.student.studentName}&
cardID=${sessionScope.student.cardID}&studentID=${sessionScope.student.studentID}&
scores=${sessionScope.scores}">点击这里退出并保存成绩</a>