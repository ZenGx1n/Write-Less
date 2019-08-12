<%--
  Created by IntelliJ IDEA.
  User: 15344
  Date: 2019/8/12
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/base.css">
    <title>Write Less, Know More</title>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>

<body>

<div id="demo" class="carousel slide" data-ride="carousel">
    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://static.runoob.com/images/mix/img_fjords_wide.jpg">
        </div>
        <div class="carousel-item">
            <img src="https://static.runoob.com/images/mix/img_nature_wide.jpg">
        </div>
        <div class="carousel-item">
            <img src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
        </div>
    </div>
    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>
<h1 class="display-2 font-weight-bold" id="title">Write Less, Know More</h1>
<div class="backTop">
    <div class="dialogue">
        <img src="../../images/dialogue_box2.png" alt="" id="dialogue"/>
    </div>
    <div class="toTop" id="toTop">
        <img src="../../images/335.png" id="toTopImg"/>
    </div>
</div>
<div class="info shadow2">
    <div style="text-align: center">
        <form class="form-signin">
            <img class="mb-4" style="border-radius: 12px" src="../../images/sign.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="username" class="sr-only">Email address</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required
                   autofocus>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
    </div>
</div>
<div class="window">
    <div class="windowItem">
        <div class="windowItemTop">
            <p><i class="fa fa-user"></i> 作者：<a href="#">椎名真白</a>&nbsp;&nbsp;|&nbsp;&nbsp;<i
                    class="fa fa-calendar-o"></i> 时间：2019-08-10 12:44:11</p>
        </div>
        <hr class="hr">
        <br>
        <div class="windowItemBody">
            百分之四十是附近居民，这一部分人互相都认识，三分之一是附近单位的公务员和单位合同工，翘班来上网了，三分之一是前面商业街上的个体户，没生意就来上网了，三分之一是前面商业街的房东，收了房租就没事干就来上网了。
        </div>
        <div class="windowItemBottom">
            <table>
                <tr>
                    <td>
                        <div class="bottomAgree">
                            <a class="btn btn-lg" href="#" style="color: #007BFF">
                                <i class="fa fa-thumbs-o-up"></i> 6900</a>
                        </div>
                    </td>
                    <td>
                        <div class="bottomOppose">
                            <a class="btn btn-lg" href="#" style="color: #007BFF"><i
                                    class="fa fa-thumbs-o-down"></i></a>
                        </div>
                    </td>
                    <td>
                        <div style="width: 30px;"></div>
                    </td>
                    <td>
                        <a class="btn btn-lg iconColor" href="#"><i class="fa fa-paper-plane"></i>&nbsp;&nbsp;分享</a>
                    </td>
                    <td>
                        <a class="btn btn-lg iconColor" href="#"><i class="fa fa-star"></i>&nbsp;&nbsp;收藏</a>
                    </td>
                    <td>
                        <a class="btn btn-lg iconColor" href="#"><i class="fa fa-copy"></i>&nbsp;&nbsp;复制</a>
                    </td>
                </tr>
            </table>
        </div>

    </div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
    <div class="windowItem"></div>
</div>

<script type="text/javascript" src="../../js/scrollToTop.js"></script>
<script type="text/javascript" src="../../js/base.js"></script>
</body>
</html>