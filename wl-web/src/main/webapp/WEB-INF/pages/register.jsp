<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Sign in</title>

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
    <link href="/css/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h2>Checkout form</h2>
        <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
    </div>

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
