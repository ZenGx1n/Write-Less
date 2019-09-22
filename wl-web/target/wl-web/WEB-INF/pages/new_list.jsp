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
<style>
    .bottomOppose {
        border: 2px solid lightblue;
        border-radius: 8px;
        width: 55px;
        height: 50px;
        color: #007BFF;
        padding-top: 13px;
        background-color: #E5F2FF;
    }

    .bottomAgree {
        border: 2px solid lightblue;
        border-radius: 8px;
        width: 90px;
        height: 50px;
        color: #007BFF;
        line-height: 25px;
        background-color: #E5F2FF;
    }

    .bottomOpposeAction {
        border: 2px solid lightblue;
        border-radius: 8px;
        width: 55px;
        height: 50px;
        color: #FFFFFF;
        padding-top: 13px;
        background-color: #18A3F7;
    }

    .bottomAgreeAction {
        border: 2px solid lightblue;
        border-radius: 8px;
        width: 90px;
        height: 50px;
        color: #FFFFFF;
        line-height: 25px;
        background-color: #18A3F7;
    }

    .action {
        background-color: #007BFF;
        color: white;
    }

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
                    <table>
                        <tr>
                            <td>
                                <div class="agreeDiv">
                                    <span class="btn btn-lg bottomAgree">
                                        <i class="fa fa-thumbs-o-up"></i> ${item.agree}</span>
                                </div>
                            </td>
                            <td>
                                <div class="">
                                    <span class="btn btn-lg bottomOppose" href="#"><i
                                            class="fa fa-thumbs-o-down"></i></span>
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
        </c:if>
    </c:forEach>
    <c:if test="${page == 1}">
        <nav class="pagination">
            <a href="javascript:void(0)" class="action">1</a>
            <a href="/message/new_list?page=2">2</a>
            <a href="/message/new_list?page=3">3</a>
            <a href="javascript:void(0)">...</a>
            <a href="/message/new_list?page=${last}">${last}</a>
            <a href="/message/new_list?page=${page+1}">&raquo;</a>
        </nav>
    </c:if>
    <c:if test="${page != 1 && page < last}">
        <nav class="pagination">
            <a href="/message/new_list?page=${page-1}">&laquo;</a>
            <a href="/message/new_list?page=${pageOne}">${pageOne}</a>
            <a href="/message/new_list?page=${pageTwo}" class="action">${pageTwo}</a>
            <a href="/message/new_list?page=${pageThree}">${pageThree}</a>
            <a href="/message/new_list?page=${pageFour}">${pageFour}</a>
            <a href="/message/new_list?page=${page+1}">&raquo;</a>
        </nav>
    </c:if>
    <c:if test="${page == last}">
        <nav class="pagination">
            <a href="/message/new_list?page=${page-1}">&laquo;</a>
            <a href="/message/new_list?page=1">1</a>
            <a href="javascript:void(0)" class="pageTwo">...</a>
            <a href="/message/new_list?page=${last-2}">${last-2}</a>
            <a href="/message/new_list?page=${last-1}">${last-1}</a>
            <a href="javascript:void(0)" class="action">${last}</a>
        </nav>
    </c:if>
</div>

<div style="height: 300px; width: 100%"></div>
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
