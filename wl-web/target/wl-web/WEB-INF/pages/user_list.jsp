<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="ms_top.jsp"/>

<link rel="stylesheet" href="/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<style>
    .addButton {
        color: #5D93DB;
        cursor: pointer;
        width: 0px;
    }

    .addButton:hover {
        color: #255CB7;
    }
</style>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" id="content">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            用户管理界面
            <small>User management</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Here</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <div class="box-body">
                <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="dataTables_length" id="example1_length"><label>Show <select
                                    name="example1_length" aria-controls="example1" class="form-control input-sm">
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                            </select> entries</label></div>
                        </div>
                        <div class="col-sm-6">
                            <div id="example1_filter" class="dataTables_filter"><label>Search:<input type="search"
                                                                                                     class="form-control input-sm"
                                                                                                     placeholder=""
                                                                                                     aria-controls="example1"></label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="example1" class="table table-bordered table-striped dataTable" role="grid"
                                   aria-describedby="example1_info">
                                <thead>
                                <tr role="row">
                                    <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1"
                                        colspan="1" aria-sort="ascending"
                                        aria-label="Rendering engine: activate to sort column descending">ID
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="Platform(s): activate to sort column ascending">用户名
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="Engine version: activate to sort column ascending">性别
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="Engine version: activate to sort column ascending">创建时间
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="Engine version: activate to sort column ascending">年龄
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="Engine version: activate to sort column ascending">职业
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="Engine version: activate to sort column ascending">权限
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                        aria-label="CSS grade: activate to sort column ascending">
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${list}" var="item">
                                    <tr>
                                        <td>${item.id}</td>
                                        <td>${item.username}</td>
                                        <td>${item.gender}</td>
                                        <td><spring:eval expression="item.createTime"/></td>
                                        <td>${item.age}</td>
                                        <td>${item.post}</td>
                                        <c:if test="${item.permission == 0}">
                                            <td>超级管理员</td>
                                        </c:if>
                                        <c:if test="${item.permission == 1}">
                                            <td>管理员</td>
                                        </c:if>
                                        <c:if test="${item.permission == 2}">
                                            <td>普通用户</td>
                                        </c:if>
                                        <td>
                                            <button type="button" class="btn btn-success btn-xs"
                                                    onclick="javascript:window.location.href='/user/detail?id=${item.id}'">
                                                查看
                                            </button>
                                            <button type="button" class="btn btn-primary btn-xs"
                                                    onclick="javascript:window.location.href='/user/to_edit?id=${item.id}'">
                                                修改
                                            </button>
                                            <!-- 按钮触发模态框 -->
                                            <button class="btn btn-primary btn-danger btn-xs"
                                                    onclick="javascript:if(confirm('确实要删除吗?'))location='/user/remove?id=${item.id}'">
                                                删除
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1
                                to 10 of 57 entries
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                <ul class="pagination">
                                    <li class="paginate_button previous disabled" id="example1_previous"><a href="#"
                                                                                                            aria-controls="example1"
                                                                                                            data-dt-idx="0"
                                                                                                            tabindex="0">Previous</a>
                                    </li>
                                    <li class="paginate_button active"><a href="#" aria-controls="example1"
                                                                          data-dt-idx="1" tabindex="0">1</a></li>
                                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2"
                                                                    tabindex="0">2</a></li>
                                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3"
                                                                    tabindex="0">3</a></li>
                                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4"
                                                                    tabindex="0">4</a></li>
                                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5"
                                                                    tabindex="0">5</a></li>
                                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6"
                                                                    tabindex="0">6</a></li>
                                    <li class="paginate_button next" id="example1_next"><a href="#"
                                                                                           aria-controls="example1"
                                                                                           data-dt-idx="7" tabindex="0">Next</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.box -->
        <div class="addButton" onclick="javascript:window.location.href='/user/to_add'"><i
                class="fa fa-plus-circle fa-4x"></i></div>
    </section>
    <!-- /.content -->
</div>

<jsp:include page="ms_bottom.jsp"/>