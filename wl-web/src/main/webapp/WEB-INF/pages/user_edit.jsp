<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="ms_top.jsp"/>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" id="content">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            编辑用户界面
            <small>Optional description</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/home"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="/user/list">Employee</a></li>
            <li class="active">Here</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">修改用户信息</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form:form action="/user/edit" modelAttribute="user" class="form-horizontal" role="form">
                <div class="box-body">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-8">
                            <form:input path="username" cssClass="form-control" placeholder=""/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">年龄</label>
                        <div class="col-sm-8">
                            <form:input path="age" cssClass="form-control" placeholder=""/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-8">
                            <form:radiobutton path="gender" value="男" checked="checked" cssClass="radio-inline"/>
                            男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;<form:radiobutton path="gender" value="女" cssClass="radio-inline"/>
                            女
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">职业</label>
                        <div class="col-sm-8">
                            <div for="id" cssClass="form-control">
                                <form:select path="post" items="${post}" itemLabel="name"
                                             itemValue="id" cssClass="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">介绍</label>
                        <div class="col-sm-8">
                            <form:input path="introduction" cssClass="form-control" placeholder=""/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">权限</label>
                        <div class="col-sm-8">
                            <form:input path="permission" cssClass="form-control" placeholder=""/>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/user/list'">Cancel</button>
                    <button type="submit" class="btn btn-info pull-right">Submit</button>
                </div>
                <!-- /.box-footer -->
            </form:form>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </section>
</div>


<jsp:include page="bottom.jsp"/>
