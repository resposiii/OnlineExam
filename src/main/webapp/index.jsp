<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/26 0026
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--这是主页-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>在线考试系统｜首页</title>
    <script src="js/core/jquery.3.2.1.min.js"></script>
    <script src="js/core/bootstrap.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ready.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/demo.css">
</head>

<body>
<div class="container">
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">在线考试系统</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="btn btn btn-warning" data-toggle="tooltip" data-placement="top" title="请登录">首页</a>
            <a class="btn btn btn-info" data-toggle="tooltip" data-placement="top" title="请登录">考试</a>
        </nav>
        <div class="col-md-1">
            <a class="btn btn-outline-warning" href="#" data-toggle="tooltip" data-placement="top" title="请登录">好运！</a>
        </div>
    </div>

    <div class="jumbotron">
        <h1>考试无忧</h1>
        <p class="lead">优化考试环境，提高考试质量，注册后就可以考试</p>
        <p><a class="btn btn-lg btn-info" href="s_register.jsp" role="button">现在注册</a></p>
        <p><a class="btn btn-lg btn-success" href="s_login.jsp" role="button">现在登录</a></p>
        <p><a class="btn btn-lg btn-success" href="t_login.jsp" role="button">教师登录</a></p>
    </div>
</div>
<script src="js/core/jquery.3.2.1.min.js"></script>

</body>
</html>


<%--<html>--%>
<%--<head>--%>
<%--    <title>登录</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--   <form action="student/s_login" method="post">--%>
<%--       用户名：<input type="text" name="studentName"/>--%>
<%--       密码：<input type="text" name="studentPassword"/>--%>
<%--       <input type="submit" value="登录">--%>
<%--   </form>--%>
<%--    <a href="student/registerPage">注册</a>--%>
<%--    <br>--%>
<%--    <a href="t_login.jsp">教师登录</a>--%>
<%--    <a href="a_login.jsp">管理员登录</a>--%>
<%--    <a href="student/score?studentID=2018001">成绩</a>--%>
<%--    <a href="student/exam">exam</a>--%>
<%--    <a href="addTitle.jsp">addTitle</a>--%>
<%--<br>--%>
<%--    <a href="admin/findStudent">findStudent</a>--%>
<%--</body>--%>
<%--</html>--%>
