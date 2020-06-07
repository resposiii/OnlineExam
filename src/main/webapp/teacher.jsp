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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
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
            <li><a href="#"><font color="339966"><span class="glyphicon glyphicon-log-in" onclick="tealogout()"></span> 退出</font></a></li>
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
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <!--弹出窗口 添加试题-->
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加试题</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">科目：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">题目：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">答案：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <%--@declare id="exampleinput1"--%><label for="exampleInput1" class="col-xs-3 control-label">题目类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">选择题</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 填空题</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--修改试题弹出窗口-->
                <div class="modal fade" id="changeSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改题目</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">科目：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">题目：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">答案：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">题目类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">选择题</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 填空题</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除资源警告窗口-->
                <div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该试题？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">删除</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 公告管理模块 -->
            <div role="tabpanel" class="tab-pane" id="char">

                <div class="check-div">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addChar">新增公告</button>
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
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeChar">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteChar">删除</button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

                <!--增加公告弹出窗口-->
                <div class="modal fade" id="addChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">新增公告</h4>
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
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
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

                <!--弹出删除公告警告窗口-->
                <div class="modal fade" id="deleteChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该公告？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">删除</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--成绩管理模块-->
            <div role="tabpanel" class="tab-pane" id="user">
                <div class="check-div form-inline">
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入学号查询">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-3 ">
                            姓名
                        </div>
                        <div class="col-xs-3">
                            学号
                        </div>
                        <div class="col-xs-3">
                            成绩
                        </div>

                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <c:forEach items="${scores}" var="scores">
                            <div class="row">
                                <div class="col-xs-3 ">
                                    ${scores.studentName}
                                </div>
                                <div class="col-xs-3">
                                    ${scores.studentID}
                                </div>
                                <div class="col-xs-3">
                                    ${scores.score}
                                </div>
                                <div class="col-xs-3">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

                <!--弹出修改成绩窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改成绩</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">科目：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">成绩：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除成绩警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该成绩？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger">删除</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
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
                                1886010100
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