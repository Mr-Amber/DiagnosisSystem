<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%--查看所有舌苔照片--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>在线医疗系统 </title>

    <!-- Bootstrap -->
    <link href="../js/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../js/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../js/vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="../js/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%@ include file="parts/Navigator.jsp"%>

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>全部舌苔照片</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <div class="row">

                                    <c:forEach items="${photos}" var="photo">
                                        <div class="col-md-55">
                                            <div class="thumbnail">
                                                <div class="image view view-first">
                                                    <%--@Todo 图片的位置--%>
                                                    <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                    <div class="mask">
                                                        <p>添加分类、回复照片</p>
                                                        <div class="tools tools-bottom">
                                                            <a href="#"><i class="fa fa-link"></i></a>
                                                            <a href="#"><i class="fa fa-pencil"></i></a>
                                                            <a href="#"><i class="fa fa-times"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="caption">
                                                    <p>
                                                        <%--@Todo 这张图片的标签 一个或多个--%>
                                                            ${photos[0].tid}&nbsp;
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
    </div>
</div>

<!-- jQuery -->
<script src="../js/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../js/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../js/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="../js/vendors/nprogress/nprogress.js"></script>

<!-- Custom Theme Scripts -->
<script src="../js/build/js/custom.min.js"></script>
</body>
</html>