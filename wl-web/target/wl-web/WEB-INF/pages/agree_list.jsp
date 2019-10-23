<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 15344
  Date: 2019/8/12
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="home.jsp"/>
<link rel="stylesheet" type="text/css" href="/css/list.css">
<style>
</style>
<div class="window">
    <c:forEach items="${newList}" var="item">
        <c:if test="${item.status==1}">
            <div class="windowItem">
                <div class="windowItemTop">
                    <p><i class="fa fa-user"></i> 作者：<a href="#">${item.user.username}</a>&nbsp;&nbsp;|&nbsp;&nbsp;<i
                            class="fa fa-calendar-o"></i> 时间：<spring:eval expression="item.createTime"/></p>
                </div>
                <hr class="hr">
                <br>
                <div class="windowItemBody">${item.content}</div>
                <div class="windowItemBottom">
                    <nav class="navbar navbar-expand-sm">
                        <ul class="navbar-nav">
                            <li class="nav-item" style="margin-right: 5px">
                                <div class="agreeDiv">
                                    <span class="btn btn-lg bottomAgree">
                                        <i class="fa fa-thumbs-o-up"></i> ${item.agree}</span>
                                </div>
                            </li>
                            <li class="nav-item">
                                <div class="">
                                    <span class="btn btn-lg bottomOppose" href="#"><i
                                            class="fa fa-thumbs-o-down"></i></span>
                                </div>
                            </li>
                        </ul>
                        <ul></ul><ul></ul>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="btn btn-lg iconColor nav-link" href="#"><i
                                        class="fa fa-paper-plane"></i>&nbsp;&nbsp;分享</a>
                            </li>
                            <li class="nav-item">
                                <a class="btn btn-lg iconColor nav-link" href="#"><i class="fa fa-star"></i>&nbsp;&nbsp;收藏</a>
                            </li>
                            <li class="nav-item">
                                <a class="btn btn-lg iconColor nav-link" href="#"><i class="fa fa-copy"></i>&nbsp;&nbsp;复制</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </c:if>
    </c:forEach>
    <c:if test="${page == 1}">
        <nav class="pagination" id="pagination">
            <a href="javascript:void(0)" class="action">1</a>
            <a href="/message/agree_message?page=2">2</a>
            <a href="/message/agree_message?page=3">3</a>
            <a href="javascript:void(0)">...</a>
            <a href="/message/agree_message?page=${last}">${last}</a>
            <a href="/message/agree_message?page=${page+1}">&raquo;</a>
        </nav>
    </c:if>
    <c:if test="${page != 1 && page < last}">
        <nav class="pagination" id="pagination">
            <a href="/message/agree_message?page=${page-1}">&laquo;</a>
            <a href="/message/agree_message?page=${pageOne}">${pageOne}</a>
            <a href="/message/agree_message?page=${pageTwo}" class="action">${pageTwo}</a>
            <a href="/message/agree_message?page=${pageThree}">${pageThree}</a>
            <a href="/message/agree_message?page=${pageFour}">${pageFour}</a>
            <a href="/message/agree_message?page=${page+1}">&raquo;</a>
        </nav>
    </c:if>
    <c:if test="${page == last}">
        <nav class="pagination" id="pagination">
            <a href="/message/agree_message?page=${page-1}">&laquo;</a>
            <a href="/message/agree_message?page=1">1</a>
            <a href="javascript:void(0)" class="pageTwo">...</a>
            <a href="/message/agree_message?page=${last-2}">${last-2}</a>
            <a href="/message/agree_message?page=${last-1}">${last-1}</a>
            <a href="javascript:void(0)" class="action">${last}</a>
        </nav>
    </c:if>
</div>


<script>
    $(document).ready(function () {
        $('.bottomAgree').click(function () {
            var index = $(".bottomAgree").index(this);
            $(".bottomAgree").eq(index).attr("class", "btn btn-lg bottomAgreeAction");
            console.log(index);
            $(".bottomOpposeAction").eq(index).attr("class", "btn btn-lg bottomOppose");
        });
        $('.bottomOppose').click(function () {
            var index = $(".bottomOppose").index(this);
            $(".bottomOppose").eq(index).attr("class", "btn btn-lg bottomOpposeAction");
            $(".bottomAgreeAction").eq(index).attr("class", "btn btn-lg bottomAgree");
        });
    });
</script>
<jsp:include page="bottom.jsp"/>
