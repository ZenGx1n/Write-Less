<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="ms_top.jsp"/>
<div class="content-wrapper" id="content">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            用户个人资料
            <small>User details</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/home"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="/user/list">User</a> </li>
            <li class="active">Here</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="panel panel-info">
            <div class="panel-heading">
                <strong><h3 style="font-weight: bold">${list.username}的个人资料</h3></strong>
            </div>
            <div class="panel-body">
                <table class="table">
                    <tr>
                        <td>ID</td>
                        <td>${list.id}</td>
                    </tr>
                    <tr>
                        <td>用户名</td>
                        <td>${list.username}</td>
                    </tr>
                    <tr>
                        <td>性别</td>
                        <td>${list.gender}</td>
                    </tr>
                    <tr>
                        <td>年龄</td>
                        <td>${list.age}</td>
                    </tr>
                    <tr>
                        <td>职业</td>
                        <td>${list.post}</td>
                    </tr>
                    <tr>
                        <td>创建时间</td>
                        <td><spring:eval expression="list.createTime"/></td>
                    </tr>
                    <tr>
                        <td>自我介绍</td>
                        <td>${list.introduction}</td>
                    </tr>
                    <tr>
                        <td>权限</td>
                        <td>${list.permission}</td>
                    </tr>
                </table>
            </div>
        </div>
        <a class="btn btn-app" style="background-color: #0088cc; color: #ffffff;" href="/user/to_edit?id=${list.id}">
            <i class="fa fa-edit"></i> Edit
        </a>
        <a class="btn btn-app" href="/user/list">
            <i class="fa fa-mail-reply"></i> Back
        </a>
    </section>
</div>
<jsp:include page="ms_bottom.jsp"/>
