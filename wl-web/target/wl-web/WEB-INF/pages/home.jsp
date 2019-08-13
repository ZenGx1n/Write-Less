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
    <link rel="stylesheet" type="text/css" href="/css/base.css">
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
    <div class="addButton" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-circle fa-3x"></i></div>
    <form method="post" action="/message/add_message">
        <div class="modal fade" id="myModal"
             style="position: fixed; height: 100%; background-color: rgba(93,147,219,0.4)">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- 模态框头部 -->
                    <div class="modal-header">
                        <h4 class="modal-title">有什么知识分享给大家的吗(●'◡'●)ﾉ♥</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- 模态框主体 -->
                    <div class="modal-body">
                        <div class="form-group">
                            <textarea rows="4" cols="100" class="form-control" name="content"
                                      placeholder="尽量不要超过120个字，太多了会受不了的(⁄ ⁄•⁄ω⁄•⁄ ⁄)"></textarea>
                        </div>
                    </div>

                    <!-- 模态框底部 -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">CLOSE</button>
                        <button type="submit" class="btn btn-success">ADD</button>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <div class="info shadow2">
        <div class="infoImg"><img src="../../images/male.jpg"/></div>
        <div style="text-align: center">
            <h5><strong>${sessionScope.user.username}</strong></h5>
        </div>
        <div class="infoTable">
            <table style="text-align: center">
                <tr>
                    <td>
                        <div class="infoTd" style="border-right: 1px solid #B7B8B7; ">
                            <a href="#"><strong style="color: black">${myMessage}</strong><br>
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
        <div class="infoToLogin" style="height: 265px;">
            <h4>每天一句</h4>
            <h5>与大家分享你刚知道的知识！</h5><br>
            <div style="margin-left: 20px; color: #828282;">
                <span>您还没有登录，</span><br>
                <span>登录后可以留言，</span><br>
                <span>点我 <a href="/to_login"> 登录 =‿=✧。</a></span><br>
                <span>什么，</span><br>
                <span>还没注册,</span><br>
                <span>点我 <a href="/to_login"> 注册 (๑•̀ㅂ•́)و✧。 </a></span>
            </div>
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


<script type="text/javascript" src="/js/scrollToTop.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
</body>

</html>