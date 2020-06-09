<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/26 0026
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>在线考试系统｜学生注册</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>
<div class="container">
    <!--main panel-->
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-8">
            <div class="main-panel">
                <div class="content">
                    <div class="container">
                        <h4 class="page-title">教师注册页面</h4>
                        <form method="post" action="t_register">
                            <div class="col-md-8">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="form-group">
                                            <label for="name">账号</label>
                                            <input type="text" class="form-control" required name="teacherName" id="name" placeholder="请输入你的姓名">
                                        </div>

                                        <div class="form-check">
                                            <label>性别</label><br>
                                            <label class="form-radio-label">
                                                <input class="form-radio-input" type="radio" name="gender" value="男">
                                                <span class="form-radio-sign">男</span>
                                            </label>
                                            <label class="form-radio-label ml-3">
                                                <input class="form-radio-input" type="radio" name="gender" value="女">
                                                <span class="form-radio-sign">女</span>
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <label for="teacherPassword">密码</label>
                                            <input type="password" class="form-control" required id="teacherPassword" name="teacherPassword" placeholder="">
                                        </div>
                                    </div>

                                    <div class="card-action">
                                        <button class="btn btn-success" type="submit">提交</button>
                                        <button class="btn btn-danger" type="reset">重置</button>
                                        <button><a class="btn btn-sm btn-info" href="index.jsp">返回</a></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</div>
</body>
</html>

<%--<html>--%>
<%--<head>--%>
<%--    <title>注册</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <form action="student/s_register" method="post">--%>
<%--        用户名：<input type="text" name="studentName"/>--%>
<%--        <br>--%>
<%--        性别：<input type="text" name="gender">--%>
<%--        <br>--%>
<%--        身份证号：<input type="text" name="cardID">--%>
<%--        <br>--%>
<%--        密码：<input type="text" name="studentPassword"/>--%>
<%--        <br>--%>
<%--        <input type="submit" value="注册">--%>
<%--    </form>--%>
<%--</body>--%>
<%--</html>--%>
