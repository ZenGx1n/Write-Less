<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include flush="true" page="ms_top.jsp"/>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" id="content">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            添加留言界面
            <small>Message added</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/home"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="/backstageMessage/new_message">Message</a></li>
            <li class="active">Here</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">填写留言信息</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form:form action="/backstageMessage/add" modelAttribute="message" class="form-horizontal" role="form">
                <div class="box-body">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">内容</label>
                        <div class="col-sm-8">
                            <form:textarea path="content" cssClass="form-control" placeholder=""/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">创建者</label>
                        <div class="col-sm-8">
                            <div for="user" cssClass="form-control">
                                <form:select path="userId" items="${user}" itemLabel="username"
                                             itemValue="id" cssClass="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">点赞数</label>
                        <div class="col-sm-8">
                            <form:input path="agree" cssClass="form-control" placeholder=""/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-8">
                            <form:input path="status" cssClass="form-control" placeholder="0:审核中，1:通过，2:驳回"/>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="button" class="btn btn-default"
                            onclick="javascript:window.location.href='/backstageMessage/new_message'">Cancel
                    </button>
                    <button type="submit" class="btn btn-info">Submit</button>
                </div>
                <!-- /.box-footer -->
            </form:form>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </section>
</div>
<jsp:include flush="true" page="ms_bottom.jsp"/>