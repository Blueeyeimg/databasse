<!DOCTYPE html>
<html lang="zh-CN">
<%@ page language="java"  pageEncoding="UTF-8"%>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>租车登录页面</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/login_page/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/login_page/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/login_page/font-awesome/css/form-elements.css">
    <link rel="stylesheet" href="assets/login_page/css/login_style.css">

    <!-- Javascript -->
    <script src="assets/login_page/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="assets/login_page/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/login_page/js/jquery.backstretch.min.js" type="text/javascript"></script>
    <script src="assets/login_page/js/scripts.js" type="text/javascript"></script>

    <script>

        $().ready(
            function () {
                $("#login").click(function () {
                    var params = {
                        "userName": $("#userName").val(),
                        "password": $("#password").val(),
                        "isadmin": 0, //userId 应与User类中属性名一致 12为传回去的查询值，可以通过输入框获取值传入
                    };
                    $.ajax({
                        type: "POST",//数据提交方式
                        url: "login",//访问路径，
                        async: "true",//异步刷新
                        dataType: "Json",//后台返回的数据类型
                        contentType: "application/json;charset=utf-8",
                        data: JSON.stringify(params),
                        success: function (data) {
                            var msg = "success";
                            if (msg === data.result) {
                                $("#info").text("密码正确，登录中...");
                                window.location.href = "my_login";
                            } else
                                $("#info").text("密码错误");
                        },//失败执行的函数
                        error: function (data) {
                            /*window.location.href="wrong";*/
                            console.log(data);
                        }//查询成功处理函数
                    });
                })

            })

        $().ready(
            function() {
                $("#adminLogin").click(function () {
                        var params = {
                            "userName": $("#userName").val(),
                            "password": $("#password").val(),
                            "isadmin": 1, //userId 应与User类中属性名一致 12为传回去的查询值，可以通过输入框获取值传入
                        };
                        $.ajax({
                            type: "POST",//数据提交方式
                            url: "login",//访问路径，
                            async : "true",//异步刷新
                            dataType: "Json",//后台返回的数据类型
                            contentType: "application/json;charset=utf-8",
                            data: JSON.stringify(params),
                            success: function (data) {
                                var msg = "success";
                                if(msg === data.result){
                                    $("#info").text("密码正确，登录中...");
                                    window.location.href = "admin_login";
                                }else
                                    $("#info").text("密码错误");
                            },//失败执行的函数
                            error: function (data) {
                                /*window.location.href="wrong";*/
                                console.log(data);
                            }//查询成功处理函数
                        });
                    })

            })
        //查询成功处理函数
    </script>


</head>

<body>
<!-- Top content -->
<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>欢迎您</strong></h1>
                    <div class="description">
                        <p>
                            这是我们新开发的系统. 您可以很方便的以<strong>低廉</strong>的价格租到您<strong>满意</strong>的车辆
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>登录以开始</h3>
                            <p>输入以登录，若用户不存在，将自动为您创建！</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <div role="form"  method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" id="userName" name="userName" placeholder="在此键入您的用户名..." class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" id="password" name="userPwd" placeholder="在此键入您的密码..." class="form-password form-control" id="form-password">
                            </div>
                            <div>
                                <a id="info">f</a>
                            </div>
                            <button type="submit" class="btn" id="login" >登录</button>
                            <button type="submit" class="btnsma_reg" >注册</button>  <!通过name来区分不同按钮，在haha里面使用类String p=requst.getParameter("name"),并判断p是否为null的方法区分>
                            <button type="submit" class="btnsma" id="adminLogin">管理员登录</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">
                    <h3>你还可以这样登录～</h3>
                    <div class="social-login-buttons">
                        <a class="btn" href="#">
                            <img src="assets/login_page/img/icon/QQ.png" class="img-circle">
                        </a>
                        <a class="btn" href="#">
                            <img src="assets/login_page/img/icon/weixin.png" class="img-circle">
                        </a>
                        <a class="btn" href="#">
                            <img src="assets/login_page/img/icon/weibo.png" class="img-circle">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
