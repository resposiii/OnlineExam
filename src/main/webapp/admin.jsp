<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ch">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>在线考试管理系统</title>
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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/slide.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap2.min.css" />
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
</head>
<body>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv">
            <span>管理员页面</span></p>
        </div>
        <div id="personInfor">
            <p id="userName">${admin.adminName}</p>

            <p>
                <a href="index.jsp">退出登录</a>
            </p>
        </div>
        <div class="meun-title">账号管理</div>
        <div class="meun-item meun-item-active" href="#student"  aria-controls="teacher" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png">学生管理</div>
        <div class="meun-item" href="#teacher"  aria-controls="teacher" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png">教师管理</div>
<%--        <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">修改密码</div>--%>
        <div class="meun-title">考试管理</div>
        <div class="meun-item" href="#scho" aria-controls="scho" role="tab" data-toggle="tab"><img src="images/icon_house_grey.png">试题管理</div>
        <div class="meun-item" href="#notice" aria-controls="notice" role="tab" data-toggle="tab"><img src="images/icon_card_grey.png">公告管理</div>

    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 资源管理模块 -->
            <!-- 权限管理模块 -->
            <!--用户管理模块-->
            <div role="tabpanel" class="tab-pane active" id="student">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户 </button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            学号
                        </div>
                        <div class="col-xs-2">
                            身份
                        </div>
                        <div class="col-xs-2">
                            姓名
                        </div>
                        <div class="col-xs-2">
                            性别
                        </div>
                        <div class="col-xs-2">
                            身份证号
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <c:forEach items="${students}" var="students">
                            <div class="row">
                                <div class="col-xs-2 ">
                                        ${students.studentID}
                                </div>
                                <div class="col-xs-2">
                                    学生
                                </div>
                                <div class="col-xs-2">
                                        ${students.studentName}
                                </div>
                                <div class="col-xs-2">
                                        ${students.gender}
                                </div>
                                <div class="col-xs-2">
                                        ${students.cardID}
                                </div>
                                <div class="col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                    <!--页码块-->

                    <!--弹出添加用户窗口-->
                    <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid">
                                        <form class="form-horizontal">
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                                <div class="col-xs-8 ">
                                                    <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                                <div class="col-xs-8 ">
                                                    <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                                <div class="col-xs-8">
                                                    <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                                <div class="col-xs-8">
                                                    <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sKnot" class="col-xs-3 control-label">年级：</label>
                                                <div class="col-xs-8">
                                                    <select class=" form-control select-duiqi">
                                                        <option value="">大一</option>
                                                        <option value="">大二</option>
                                                        <option value="">大三</option>
                                                        <option value="">大四</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sKnot" class="col-xs-3 control-label">身份：</label>
                                                <div class="col-xs-8">
                                                    <select class=" form-control select-duiqi">
                                                        <option value="">管理员</option>
                                                        <option value="">教师</option>
                                                        <option value="">学生</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="situation" class="col-xs-3 control-label">状态：</label>
                                                <div class="col-xs-8">
                                                    <label class="control-label" for="anniu">
                                                        <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <label class="control-label" for="meun">
                                                        <input type="radio" name="situation" id="forbid"> 禁用</label>
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

                    <!--弹出修改用户窗口-->

                    <!-- /.modal -->

                    <!--弹出删除用户警告窗口-->

                    <!-- /.modal -->
                </div>
            <div role="tabpanel" class="tab-pane" id="teacher">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户 </button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            工号
                        </div>
                        <div class="col-xs-2">
                            身份
                        </div>
                        <div class="col-xs-2">
                            姓名
                        </div>
                        <div class="col-xs-2">
                            性别
                        </div>
                        <div class="col-xs-2">
                            密码
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <c:forEach items="${teachers}" var="teachers">
                            <div class="row">
                                <div class="col-xs-2 ">
                                        ${teachers.teacherID}
                                </div>
                                <div class="col-xs-2">
                                    教师
                                </div>
                                <div class="col-xs-2">
                                        ${teachers.teacherName}
                                </div>
                                <div class="col-xs-2">
                                        ${teachers.gender}
                                </div>
                                <div class="col-xs-2">
                                        ${teachers.teacherPassword}
                                </div>
                                <div class="col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!--页码块-->

                <!--弹出添加用户窗口-->
                <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">年级：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">大一</option>
                                                    <option value="">大二</option>
                                                    <option value="">大三</option>
                                                    <option value="">大四</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">身份：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">教师</option>
                                                    <option value="">学生</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
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

                <!--弹出修改用户窗口-->

                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->

                <!-- /.modal -->
            </div>
                <!-- 修改密码模块 -->
                <div role="tabpanel" class="tab-pane" id="chan">
                    <div class="check-div">
                        原始密码为${admin.password}
                    </div>
                    <div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="sKnot" class="col-xs-4 control-label">原密码：</label>
                                <div class="col-xs-5">
                                    <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sKnot" class="col-xs-4 control-label">新密码：</label>
                                <div class="col-xs-5">
                                    <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
                                <div class="col-xs-5">
                                    <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                                </div>
                            </div>
                            <div class="form-group text-right">
                                <div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
                                    <button type="reset" class="btn btn-xs btn-white">取 消</button>
                                    <button type="submit" class="btn btn-xs btn-green">保存</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <!--试卷管理模块-->
                <div role="tabpanel" class="tab-pane" id="scho">

                    <div class="check-div form-inline">
                        <div class="col-xs-3">
                            <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSchool">添加试卷</button>
                        </div>
                    </div>
                    <div class="data-div">
                        <div class="row tableHeader">
                            <div class="col-xs-1 ">
                                编码
                            </div>
                            <div class="col-xs-2 ">
                                科目
                            </div>
                            <div class="col-xs-2">
                                问题
                            </div>
                            <div class="col-xs-2">
                                类型
                            </div>
                            <div class="col-xs-2">
                                操作
                            </div>
                        </div>
                        <div class="tablebody">
                            <c:forEach items="${questions}" var="questions">
                                <div class="row">
                                    <div class="col-xs-1 ">
                                        ${questions.id}
                                    </div>
                                    <div class="col-xs-2">
                                        ${questions.subject}
                                    </div>
                                    <div class="col-xs-2">
                                        ${questions.title}
                                    </div>
                                    <div class="col-xs-2">
                                        ${questions.types}
                                    </div>
                                    <div class="col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!--页码块-->

                    <!--弹出添加试卷窗口-->
                    <div class="modal fade" id="addSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="gridSystemModalLabel">添加试卷</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid">
                                        <form class="form-horizontal">
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">试卷名称：</label>
                                                <div class="col-xs-8 ">
                                                    <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label for="sName" class="col-xs-3 control-label">考试时长：</label>
                                                <div class="col-xs-8 ">
                                                    <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sLink" class="col-xs-3 control-label">参考人数：</label>
                                                <div class="col-xs-8 ">
                                                    <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="sOrd" class="col-xs-3 control-label">备注：</label>
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



                </div>
                <!--公告管理模块-->
                <div role="tabpanel" class="tab-pane" id="notice">
                    <div class="check-div">
                        公告
                    </div>
                    <div class="data-div">
                        <div class="row tableHeader">
                            <div class="col-xs-1 ">
                                编码
                            </div>
                            <div class="col-xs-4 ">
                                内容
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
                                            ${notices.title}
                                    </div>
                                    <div class="col-xs-2">
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!--学生信息模块-->
            </div>
        </div>
    </div>
    <!-- 滑块js -->
    <!--	<script type="text/javascript">
            scale = function(btn, bar, title, unit) {
                    this.btn = document.getElementById(btn);
                    this.bar = document.getElementById(bar);
                    this.title = document.getElementById(title);
                    this.step = this.bar.getElementsByTagName("div")[0];
                    this.unit = unit;
                    this.init();
            };
            scale.prototype = {
                    init: function() {
                            var f = this,
                                    g = document,
                                    b = window,
                                    m = Math;
                            f.btn.onmousedown = function(e) {
                                    var x = (e || b.event).clientX;
                                    var l = this.offsetLeft;
    //						var max = f.bar.offsetWidth - this.offsetWidth;
                                    var max = f.bar.offsetWidth-20 ;
                                    g.onmousemove = function(e) {
                                            var thisX = (e || b.event).clientX;
                                            var to = m.min(max, m.max(-2, l + (thisX - x)));
                                            f.btn.style.left = to+ 'px';
                                            f.ondrag(m.round(m.max(0, to / max) * 100), to);
                                            b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
                                    };
                                    g.onmouseup = new Function('this.onmousemove=null');
                            };
                    },
                    ondrag: function(pos, x) {
                            this.step.style.width = Math.max(0, x) +2+ 'px';
                            this.title.innerHTML = pos / 10 + this.unit + "";
                    }
            }
            new scale('btn0', 'bar0', 'title0', "分钟");
            new scale('btn1', 'bar1', 'title1', "分钟");
            new scale('btn2', 'bar2', 'title2', "天");
            new scale('btn3', 'bar3', 'title3', "次");
    </script>
    -->
    <script src="js/jquery.nouislider.js"></script>

    <!-- this page specific inline scripts -->
    <script>
        //min/max slider
        function huadong(my, unit, def, max) {
            $(my).noUiSlider({
                range: [0, max],
                start: [def],
                handles: 1,
                connect: 'upper',
                slide: function() {
                    var val = Math.floor($(this).val());
                    $(this).find(".noUi-handle").text(
                        val + unit
                    );
                    console.log($(this).find(".noUi-handle").parent().parent().html());
                },
                set: function() {
                    var val = Math.floor($(this).val());
                    $(this).find(".noUi-handle").text(
                        val + unit
                    );
                }
            });
            $(my).val(def, true);
        }
        huadong('.slider-minmax1', "分钟", "5", 30);
        huadong('.slider-minmax2', "分钟", "6", 15);
        huadong('.slider-minmax3', "分钟", "10", 60);
        huadong('.slider-minmax4', "次", "2", 10);
        huadong('.slider-minmax5', "天", "3", 7);
        huadong('.slider-minmax6', "天", "8", 10);
    </script>
</body>

</html>