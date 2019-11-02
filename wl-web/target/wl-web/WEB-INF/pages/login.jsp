<%--
  Created by IntelliJ IDEA.
  User: 15344
  Date: 2019/10/30
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Signin</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/bootstrap.css" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="/css/floating-labels.css" rel="stylesheet">
</head>
<body>
<form class="form-signin" action="#" onsubmit="return false;" method="post">
    <div class="text-center mb-4">
        <img class="mb-4" style="border-radius: 12px" src="../../images/sign.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Sign in to Write Less</h1>
    </div>

    <div class="form-label-group">
        <input type="text" id="username" name="username" class="form-control" placeholder="UserName" required autofocus>
        <label for="username">User name</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        <label for="password">Password</label>
    </div>
    <div class="alert alert-danger" id="tips" style="display: none;">
        登录提示信息
    </div>
    <p>New to Write Less? <a href="#">Create an account.</a></p>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" onclick="login()" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted text-center">Copyright © 2019, Write Less</p>
</form>

<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript">
    // 正则验证start
    /**
     * 判空
     *
     * @param obj
     * @returns {boolean}
     */
    function isNull(obj) {
        if (obj == null || obj == undefined || obj.trim() == "") {
            return true;
        }
        return false;
    }

    /**
     * 参数长度验证
     *
     * @param obj
     * @param length
     * @returns {boolean}
     */
    function validLength(obj, length) {
        if (obj.trim().length < length) {
            return true;
        }
        return false;
    }

    /**
     * 用户名称验证 4到16位（字母，数字，下划线，减号）
     *
     * @param userName
     * @returns {boolean}
     */
    function validUserName(userName) {
        var pattern = /^[a-zA-Z0-9_-]{4,16}$/;
        if (pattern.test(userName.trim())) {
            return (true);
        } else {
            return (false);
        }
    }

    /**
     * 用户密码验证 最少6位，最多20位字母或数字的组合
     *
     * @param password
     * @returns {boolean}
     */
    function validPassword(password) {
        var pattern = /^[a-zA-Z0-9]{6,20}$/;
        if (pattern.test(password.trim())) {
            return (true);
        } else {
            return (false);
        }
    }

    // <!-- 正则验证 end-->

    function login() {
        var username = $("#username").val();
        var password = $("#password").val();
        if (isNull(username)) {
            showErrorInfo("请输入用户名！");
        }
        if (!validUserName(username)) {
            showErrorInfo("请输入正确的用户名！");
        }
        if (isNull(password)) {
            showErrorInfo("请输入密码!");
            return;
        }
        if (!validPassword(password)) {
            showErrorInfo("请输入正确的密码!");
            return;
        }

        $.ajax({
            url: "/login",
            type: "post",
            data: {
                username: $("input[name=username]").val(),
                password: $("input[name=password]").val()
            },
            dataType: "json",
            success: function (result) {
                var flag = result.flag;
                if (flag == true) {
                    //如果登录成功则跳转到成功页面
                    $('#tips').css("display", "none");
                    alert("登录成功");
                    window.location.href = "/home";
                } else {
                    //跳回到Index.jsp登录页面，同时在登录页面给用户一个友好的提示
                    showErrorInfo("登陆失败!请检查账号和密码！");
                }
            }

        });
    }
    function showErrorInfo(info) {
        $('#tips').css("display", "block");
        $('#tips').html(info);
    }
</script>
</body>
</html>