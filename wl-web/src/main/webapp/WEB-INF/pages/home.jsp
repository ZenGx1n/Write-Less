<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 15344
  Date: 2019/8/11
  Time: 10:51
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

<c:if test="${sessionScope.user != null}">
    <div class="info shadow2">
        <div class="infoImg"><img src="../../images/male.jpg"/></div>
        <div style="text-align: center">
            <h5><strong>ZenGx1n</strong></h5>
        </div>
        <div class="infoTable">
            <table style="text-align: center">
                <tr>
                    <td>
                        <div class="infoTd" style="border-right: 1px solid #B7B8B7; ">
                            <a href="#"><strong style="color: black">32</strong><br>
                                <p style="color: #B7B8B7">
                                    <small>留言</small>
                                </p>
                            </a>
                        </div>
                    </td>
                    <td>
                        <div class="infoTd" style="border-right: 1px solid #B7B8B7; ">
                            <a href="#"><strong style="color: black">32</strong><br>
                                <p>
                                    <small style="color: #B7B8B7">收藏</small>
                                </p>
                            </a>
                        </div>
                    </td>
                    <td>
                        <div class="infoTd">
                            <a href="#"><strong style="color: black">32</strong><br>
                                <p>
                                    <small style="color: #B7B8B7">点赞</small>
                                </p>
                            </a>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <hr>
        <div style="text-align: center">
            <a href="#"><i class="fa fa-user"></i>&nbsp;&nbsp;个人信息</a>
        </div>
        <hr>
        <div class="infoLink">
            <table>
                <tr>
                    <td>
                        <a href="https://github.com/ZenGx1n/Write-Less"><i class="fa fa-github"></i>&nbsp;&nbsp;<span>GitHub</span></a>
                    </td>
                    <td style="width: 40px;"></td>
                    <td>
                        <a href="#"><i class="fa fa-weibo"></i>&nbsp;&nbsp;<span>微博</span></a>
                    </td>
                </tr>
            </table>
        </div>
        <hr>
        <br>
        <div class="infoHr"></div>
    </div>
</c:if>
<c:if test="${sessionScope.user == null}">
    <div class="info shadow2">
        <div class="infoImg"><img src="../../images/male.jpg"/></div>
        <div style="text-align: center">
            <h5><strong>ZenGx1n</strong></h5>
        </div>
        <div class="infoTable">
            <table style="text-align: center">
                <tr>
                    <td>
                        <div class="infoTd" style="border-right: 1px solid #B7B8B7; ">
                            <a href="#"><strong style="color: black">32</strong><br>
                                <p style="color: #B7B8B7">
                                    <small>留言</small>
                                </p>
                            </a>
                        </div>
                    </td>
                    <td>
                        <div class="infoTd" style="border-right: 1px solid #B7B8B7; ">
                            <a href="#"><strong style="color: black">32</strong><br>
                                <p>
                                    <small style="color: #B7B8B7">收藏</small>
                                </p>
                            </a>
                        </div>
                    </td>
                    <td>
                        <div class="infoTd">
                            <a href="#"><strong style="color: black">32</strong><br>
                                <p>
                                    <small style="color: #B7B8B7">点赞</small>
                                </p>
                            </a>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <hr>
        <div style="text-align: center">
            <a href="#"><i class="fa fa-user"></i>&nbsp;&nbsp;个人信息</a>
        </div>
        <hr>
        <div class="infoLink">
            <table>
                <tr>
                    <td>
                        <a href="https://github.com/ZenGx1n/Write-Less"><i class="fa fa-github"></i>&nbsp;&nbsp;<span>GitHub</span></a>
                    </td>
                    <td style="width: 40px;"></td>
                    <td>
                        <a href="#"><i class="fa fa-weibo"></i>&nbsp;&nbsp;<span>微博</span></a>
                    </td>
                </tr>
            </table>
        </div>
        <hr>
        <br>
        <div class="infoHr"></div>
    </div>
</c:if>
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
<script>
    $(document).ready(function () {
        $('.bottomAgree').click(function () {
            $('.bottomAgree a').css("color", "white");
            $('.bottomAgree').css("background-color", "#18A3F7");
            $('.bottomOppose a').css("color", "#007BFF");
            $('.bottomOppose').css("background-color", "#E5F2FF");
        });

        $('.bottomOppose').click(function () {
            $('.bottomOppose a').css("color", "white");
            $('.bottomOppose').css("background-color", "#18A3F7");
            $('.bottomAgree a').css("color", "#007BFF");
            $('.bottomAgree').css("background-color", "#E5F2FF");
        });
    });
</script>
</body>

</html>