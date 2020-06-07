<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/7 0007
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--这是考试页面-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后 -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>在线考试系统｜进行中</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/timemachine.css"><!--倒计时-->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>

<body>
<div class="container">
    <div class="time-item">
        <p>距离考试结束还有</p>
        <span id="day_show">0天</span>
        <strong id="hour_show">0时</strong>
        <strong id="minute_show">0分</strong>
        <strong id="second_show">0秒</strong>
    </div>

    <div id="examnav" class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">在线考试系统</h5>
        <nav class="my-2 my-md-0 mr-md-5">
            <a class="text-dark mr-md-5" style="color: red">${student.studentName}</a>
            <a class="btn btn-info" href="index.jsp">返回首页</a>
        </nav>
        <div class="col-md-2">
            <a class="btn btn-danger" href="s_login.jsp">退出登录</a>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3"></div>
        <form action="getScore" method="post">
            <!--提交试卷id，学生id-->
            <input type="hidden" name="paperId"/>
            <input type="hidden" name="studentId"/>

            <div>
                <div class="row form-check">
                    <div class="col-xs-12 col-lg-12">
                            <%int i=1;%>
                            <c:forEach items="${questions}" var="question">
                                <tr><%out.print(i++);%>
                                    .(${question.subject})${question.title}(20分)</tr>
                                <br/>
                                <tr>
                                    <td><input type="radio"
                                               name="subjectOption-${question.id}"
                                               id="ans1-${question.id}" value="A">${question.ans1}</td>
                                    <br/>
                                    <td><input type="radio"
                                               name="subjectOption-${question.id}"
                                               id="ans2-${question.id}" value="B">${question.ans2}</td>
                                    <br/>
                                    <td><input type="radio"
                                               name="subjectOption-${question.id}"
                                               id="ans3-${question.id}" value="C">${question.ans3}</td>
                                    <br/>
                                    <td><input type="radio"
                                               name="subjectOption-${question.id}"
                                               id="ans4-${question.id}" value="D">${question.ans4}</td>
                                </tr>
                                <hr/>
                            </c:forEach>
                            <button type="submit" class="btn btn-success">提交</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

</div>

<script type="text/javascript" src="js/core/jquery.3.2.1.min.js"></script>
<script type="text/javascript">
    var intDiff = parseInt(200);//倒计时总秒数量,我这里测试输的是60s，可以在出试卷的时候设置？
    function timer(intDiff)//倒计时方法
    {
        window.setInterval(function(){
            var day=0,
                hour=0,
                minute=0,
                second=0;//时间默认值
            if(intDiff > 0){
                day = Math.floor(intDiff / (60 * 60 * 24));
                hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
                minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
                second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
            }
            if (minute <= 9) minute = '0' + minute;
            if (second <= 9) second = '0' + second;
            $('#day_show').html(day+"天");
            $('#hour_show').html('<s id="h"></s>'+hour+'时');
            $('#minute_show').html('<s></s>'+minute+'分');
            $('#second_show').html('<s></s>'+second+'秒');
            intDiff--;
        }, 1000);
    }
    $(function(){
        timer(intDiff);
    });
</script>
</body>
</html>

