<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ch">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="左右结构项目，属于大人员的社交工具">
    <meta name="keywords" content="左右结构项目 社交 占座 ">
    <!--复制的产物，不要在意-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>在线考试系统教师端</title>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $(".meun-item").click(function() {
                $(".meun-item").removeClass("meun-item-active");
                $(this).addClass("meun-item-active");
                var itmeObj = $(".meun-item").find("img");
                itmeObj.each(function() {
                    var items = $(this).attr("src");
                    items = items.replace("_grey.png", ".png");
                    items = items.replace(".png", "_grey.png")
                    $(this).attr("src", items);
                });
                var attrObj = $(this).find("img").attr("src");
                ;
                attrObj = attrObj.replace("_grey.png", ".png");
                $(this).find("img").attr("src", attrObj);
            });
            $("#topAD").click(function() {
                $("#topA").toggleClass(" glyphicon-triangle-right");
                $("#topA").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topBD").click(function() {
                $("#topB").toggleClass(" glyphicon-triangle-right");
                $("#topB").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topCD").click(function() {
                $("#topC").toggleClass(" glyphicon-triangle-right");
                $("#topC").toggleClass(" glyphicon-triangle-bottom");
            });
            $(".toggle-btn").click(function() {
                $("#leftMeun").toggleClass("show");
                $("#rightContent").toggleClass("pd0px");
            })
        })
    </script>
    <!-- 自定义jquery -->
    <script>
        function tealogout(){
            alert("确定要退出登录吗？");
        }
    </script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link href="css/bootstrap1.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/slide.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap1.min.css" />
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand"><font color="339966">&nbsp;教师端</font></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="t_login.jsp"><font color="339966"><span class="glyphicon glyphicon-log-in" onclick="tealogout()"></span> 退出</font></a></li>
            <!--此时转到登陆界面-->
        </ul>
    </div>
</nav>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div class="meun-title">信息管理</div>
        <div class="meun-item meun-item-active" href="#sour" aria-controls="sour" role="tab" data-toggle="tab"><img src="images/icon_source.png">试题管理</div>
        <div class="meun-item" href="#user" aria-controls="user" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png">成绩管理</div>
        <div class="meun-item" href="#users" aria-controls="user" role="tab" data-toggle="tab"><img src="images/icon_chara_grey.png">个人信息</div>
        <div class="meun-item" href="#char" aria-controls="char" role="tab" data-toggle="tab">公告管理</div>


    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 试题管理模块 -->
            <div role="tabpanel" class="tab-pane active" id="sour">
                <div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource">添加试题</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            题目编号
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            科目
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                            题目类型
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <c:forEach items="${questions}" var="questions">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                        ${questions.id}
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <div>${questions.subject}</div>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        ${questions.types}
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <a class="btn btn-success btn-xs" href="beforeUpdateQuestion?id=${questions.id}">修改</a>
                                    <a class="btn btn-danger btn-xs" href="deleteQuestion?id=${questions.id}" data-target="#deleteSource">删除</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <!--弹出窗口 添加试题-->
                <!-- 模态框（Modal） -->
                <div class="modal fade" id="addSource" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myModalLabel">添加试题</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" method="post" action="addQuestion">
                                    <div class="form-group">
                                        <label for="subjectTitle" class="col-sm-2 control-label">题目</label>
                                        <div class="col-sm-4">
                                            <input class="form-control" name="title" placeholder="题目"
                                                   id="subjectTitle">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subjectTitle" class="col-sm-2 control-label">学科</label>
                                        <div class="col-sm-4">
                                            <input class="form-control" name="subject" placeholder="学科"
                                                   id="subjectTitle">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subjectOptionA" class="col-sm-2 control-label">选项A</label>
                                        <div class="col-sm-3">
                                            <input class="form-control" name="ans1" placeholder="A"
                                                   id="subjectOptionA">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subjectOptionB" class="col-sm-2 control-label">选项B</label>
                                        <div class="col-sm-3">
                                            <input class="form-control" name="ans2" placeholder="B"
                                                   id="subjectOptionB">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subjectOptionC" class="col-sm-2 control-label">选项C</label>
                                        <div class="col-sm-3">
                                            <input class="form-control" name="ans3" placeholder="C"
                                                   id="subjectOptionC">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subjectOptionD" class="col-sm-2 control-label">选项D</label>
                                        <div class="col-sm-3">
                                            <input class="form-control" name="ans4" placeholder="D"
                                                   id="subjectOptionD">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">类型</label> <label
                                            class="radio-inline"> <input type="radio"
                                                                         name="types" checked="checked" id="inlineRadio1" value="选择">选择
                                    </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">答案</label> <label
                                            class="radio-inline"> <input type="radio"
                                                                         name="answer" id="inlineRadio1" value="A"> A
                                    </label> <label class="radio-inline"> <input type="radio"
                                                                                 name="answer" id="inlineRadio2" value="B"> B
                                    </label> <label class="radio-inline"> <input type="radio"
                                                                                 name="answer" id="inlineRadio3" value="C"> C
                                    </label> <label class="radio-inline"> <input type="radio"
                                                                                 name="answer" id="inlineRadio3" value="D"> D
                                    </label>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <button type="submit" class="btn btn-primary">提交更改</button>
                                    </div>
                                </form>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
<%--                <!--修改试题弹出窗口-->--%>
<%--                <div class="modal fade" id="changeSource" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--                    <div class="modal-dialog">--%>
<%--                        <div class="modal-content">--%>
<%--                            <div class="modal-header">--%>
<%--                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                                <h4 class="modal-title" id="myModalLabel">修改试题</h4>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>
<%--                                <form class="form-horizontal" method="post" action="updateQuestion">--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="subjectTitle" class="col-sm-2 control-label">题目</label>--%>
<%--                                        <div class="col-sm-4">--%>
<%--                                            <input class="form-control" name="title"--%>
<%--                                                   id="subjectTitle">${sessionScope.question.title}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="subjectTitle" class="col-sm-2 control-label">学科</label>--%>
<%--                                        <div class="col-sm-4">--%>
<%--                                            <input class="form-control" name="subject"--%>
<%--                                                   id="subjectTitle">${sessionScope.question.subject}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="subjectOptionA" class="col-sm-2 control-label">选项A</label>--%>
<%--                                        <div class="col-sm-3">--%>
<%--                                            <input class="form-control" name="ans1"--%>
<%--                                                   id="subjectOptionA">${sessionScope.question.ans1}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="subjectOptionB" class="col-sm-2 control-label">选项B</label>--%>
<%--                                        <div class="col-sm-3">--%>
<%--                                            <input class="form-control" name="ans2"--%>
<%--                                                   id="subjectOptionB">${sessionScope.question.ans2}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="subjectOptionC" class="col-sm-2 control-label">选项C</label>--%>
<%--                                        <div class="col-sm-3">--%>
<%--                                            <input class="form-control" name="ans3"--%>
<%--                                                   id="subjectOptionC">${sessionScope.question.ans3}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="subjectOptionD" class="col-sm-2 control-label">选项D</label>--%>
<%--                                        <div class="col-sm-3">--%>
<%--                                            <input class="form-control" name="ans4"--%>
<%--                                                   id="subjectOptionD">${sessionScope.question.ans4}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label class="col-sm-2 control-label">类型</label> <label--%>
<%--                                            class="radio-inline"> <input type="radio"--%>
<%--                                                                         name="types" checked="checked" id="inlineRadio1" value="选择">选择--%>
<%--                                    </label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label class="col-sm-2 control-label">答案</label> <label--%>
<%--                                            class="radio-inline"> <input type="radio"--%>
<%--                                                                         name="answer" id="inlineRadio1" value="A"> A--%>
<%--                                    </label> <label class="radio-inline"> <input type="radio"--%>
<%--                                                                                 name="answer" id="inlineRadio2" value="B"> B--%>
<%--                                    </label> <label class="radio-inline"> <input type="radio"--%>
<%--                                                                                 name="answer" id="inlineRadio3" value="C"> C--%>
<%--                                    </label> <label class="radio-inline"> <input type="radio"--%>
<%--                                                                                 name="answer" id="inlineRadio3" value="D"> D--%>
<%--                                    </label>--%>
<%--                                    </div>--%>
<%--                                    <div class="modal-footer">--%>
<%--                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>--%>
<%--                                        <button type="submit" class="btn btn-primary">提交更改</button>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div><!-- /.modal-content -->--%>
<%--                    </div><!-- /.modal -->--%>
<%--                </div>--%>
                <!-- /.modal -->
            </div>
            <!-- 公告管理模块 -->
            <div role="tabpanel" class="tab-pane" id="char">

                <div class="check-div">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addNotice">新增公告</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-1 ">
                            编码
                        </div>
                        <div class="col-xs-4">
                            公告名
                        </div>
                        <div class="col-xs-5">
                            公告详情
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <c:forEach items="${notices}" var="notices">
                            <div class="row">
                                <div class="col-xs-1 ">
                                        ${notices.id}
                                </div>
                                <div class="col-xs-4">
                                    </span><span>考试</span>
                                </div>
                                <div class="col-xs-5">
                                        ${notices.title}
                                </div>
                                <div class="col-xs-2">
                                    <a class="btn btn-danger btn-xs" href="deleteNotice?id=${notices.id}">删除</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

                <!--增加公告弹出窗口-->
                <div class="modal fade" id="addNotice" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">添加公告</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" method="post" action="addNotice">
                                    <div class="form-group">
                                        <label for="subjectTitle" class="col-sm-2 control-label">内容</label>
                                        <div class="col-sm-4">
                                            <input class="form-control" name="title" placeholder="内容"
                                                   id="subjectTitle">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <button type="submit" class="btn btn-primary">提交更改</button>
                                    </div>
                                </form>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
                <!-- /.modal -->

                <!--修改公告弹出窗口-->
                <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改公告</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">公告标题：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">公告详情：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!-- /.modal -->

            </div>
            <!--成绩管理模块-->
            <div role="tabpanel" class="tab-pane" id="user">
                <div class="check-div form-inline">
                    <div class="col-xs-4">
                        <form action="findScoreById" method="post">
                            <input type="text" name="studentID" class="form-control input-sm" placeholder="输入学号查询">
                            <button class="btn btn-white btn-xs " type="submit">查 询 </button>
                        </form>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-4 ">
                            姓名
                        </div>
                        <div class="col-xs-4">
                            学号
                        </div>
                        <div class="col-xs-4">
                            成绩
                        </div>
                    </div>
                    <div class="tablebody">
                        <c:forEach items="${scores}" var="scores">
                            <div class="row">
                                <div class="col-xs-4 ">
                                        ${scores.studentName}
                                </div>
                                <div class="col-xs-4">
                                        ${scores.studentID}
                                </div>
                                <div class="col-xs-4">
                                        ${scores.score}
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

                <!--弹出修改成绩窗口-->
                <!-- /.modal -->

                <!--弹出删除成绩警告窗口-->
                <!-- /.modal -->

            </div>
            <!--个人信息模块-->
            <div role="tabpanel" class="tab-pane" id="users">
                <div class="check-div form-inline">
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            教师工号
                        </div>
                        <div class="col-xs-2">
                            教师姓名
                        </div>
                        <div class="col-xs-2">
                            性别
                        </div>
                        <div class="col-xs-2">
                            密码
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                ${teacher.teacherID}
                            </div>
                            <div class="col-xs-2">
                                ${teacher.teacherName}
                            </div>
                            <div class="col-xs-2">
                                ${teacher.gender}
                            </div>
                            <div class="col-xs-2">
                                ${teacher.teacherPassword}
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
    <script src="js/jquery.nouislider.js"></script>


</body>

</html>