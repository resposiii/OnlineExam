<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/6 0006
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--这是登陆页面-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>在线考试系统｜登陆</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>
<body>
<div class="page-header">
    <div class="row">
        <div class="col-lg-8">
            <h1>在线考试系统    <small>祝考试愉快</small></h1>
        </div>
        <div class="col-md-2">
            <div class="form-group input-group input-group-lg">
                <p><a class="btn btn-lg btn-info" href="s_register.jsp" role="button">现在注册</a></p>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group input-group input-group-lg">
                <a href="a_login.jsp"><button class="btn btn-lg btn-danger" type="submit">切换后台登录</button></a>
            </div>
        </div>
    </div>
</div>

<div class="jumbotron">
    <form method="post" action="s_login" class="form-signin" style="margin-left: 40%; margin-top: 10%;">
        <div class="row">
            <div class="form-group col-lg-4 input-group input-group-lg">
                <h3 class="form-signin-heading">登录考试</h3>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-lg-4 input-group input-group-lg">
                <label for="username" class="sr-only">用户名</label>
                <input type="text" id="username" class="form-control"
                       placeholder="用户名" required autofocus name="studentName"/>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-lg-4 input-group input-group-lg">
                <label for="password" class="sr-only">密码</label>
                <input type="password" id="password" class="form-control "
                       placeholder="密码" required name="studentPassword"/>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-lg-2 input-group input-group-lg">
                <input class="btn btn-lg btn-success btn-block" type="submit" value="登录" onclick="doLogin()">
            </div>
            <div class="form-group col-lg-2 input-group input-group-lg">
                <input class="btn btn-lg btn-danger btn-block" value="重置"/>
            </div>
        </div>

    </form>
    <script src="${pageContext.request.contextPath}/js/core/jquery.3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/core/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/3.1.1/layer.js"></script>
    <script>
        function doLogin() {
            var username = $("#username").val();
            if (username == "")//用户名不能为空
            {
                layer.msg("用户不能为空！", {time:2000, icon:5, shift:6}, function () {
                });
                return;
            }
            var password = $("#password").val();
            if (password == "")//密码不能为空
            {
                layer.msg("密码不能为空！", {time:2000, icon:5, shift:6}, function(){
                });
                return;
            }
            /* $("#loginForm").submit(); */
            var loadingIndex;
            //提交表格
            $.post({
                type:"POST",
                url:"/foreCheck/check",
                data:{
                    "studentName":username,
                    "Password":password
                },
                beforeSend:function(){
                    loadingIndex = layer.msg('处理中', {icon: 16});
                },
                success:function(result){
                    console.log(result)
                    layer.close(loadingIndex);
                    if(result.success){
                        window.location.href="startExam";
                    }else{
                        layer.msg("用户名或密码错误！", {time:2000, icon:5, shift:6}, function(){});
                    }
                }
            });
            return false;

        }
    </script>
</div>
</body>
</html>

