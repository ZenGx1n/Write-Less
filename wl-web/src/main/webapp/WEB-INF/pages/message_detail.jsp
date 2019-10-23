<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="ms_top.jsp"/>
<div class="content-wrapper" id="content">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            留言详细信息
            <small>Message details</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/home"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="/backstageMessage/new_message">Message</a> </li>
            <li class="active">Here</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="col-md-12">
            <div class="box box-solid">
                <div class="box-header with-border">
                    <i class="fa fa-text-width"></i>

                    <h3 class="box-title">Number：${message.number}</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <blockquote>
                        <p>${message.content}</p>
                        <small>${message.user.username} message in <cite title="Source Title"><spring:eval expression="message.createTime"/></cite></small>
                    </blockquote>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <a class="btn btn-app" style="background-color: #0088cc; color: #ffffff;" href="/backstageMessage/to_edit?number=${message.number}">
            <i class="fa fa-edit"></i> Edit
        </a>
        <a class="btn btn-app" href="javascript:history.back(-1)">
            <i class="fa fa-mail-reply"></i> Back
        </a>
        <c:if test="${message.status == 0}">
            <a class="btn btn-app btn-success" style="background-color: #00A65A; color: white"  href="/backstageMessage/editStatus?number=${message.number}&status=1">
                <i class="fa fa-check-square-o"></i> 通过
            </a>
            <a class="btn btn-app" style="background-color: #DD4B39; color: white" href="/backstageMessage/editStatus?number=${message.number}&status=2">
                <i class="fa fa-ban"></i> 驳回
            </a>
        </c:if>
    </section>
</div>
<jsp:include page="ms_bottom.jsp"/>
