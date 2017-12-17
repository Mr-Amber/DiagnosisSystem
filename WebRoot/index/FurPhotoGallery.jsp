<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
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
        <%--<div class="col-md-3 left_col">--%>
            <%--<div class="left_col scroll-view">--%>
                <%--<div class="navbar nav_title" style="border: 0;">--%>
                    <%--<a href="＃" class="site_title"><i class="fa fa-paw"></i> <span>在线医疗系统</span></a>--%>
                <%--</div>--%>

                <%--<div class="clearfix"></div>--%>
                <%--<!-- menu profile quick info -->--%>
                <%--<div class="profile clearfix">--%>
                    <%--<div class="profile_pic">--%>
                        <%--<img src="images/img.jpg" alt="..." class="img-circle profile_img">--%>
                    <%--</div>--%>
                    <%--<div class="profile_info">--%>
                        <%--<span>欢迎您,</span>--%>
                        <%--&lt;%&ndash;@Todo 医生&ndash;%&gt;--%>
                        <%--<h2>医生</h2>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<!-- /menu profile quick info -->--%>
                <%--<br />--%>
                <%--<br />--%>

                <%--<!-- sidebar menu -->--%>
                <%--<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">--%>
                    <%--<div class="menu_section">--%>
                        <%--<ul class="nav side-menu">--%>
                            <%--<li class="active"><a><i class="fa fa-photo"></i>全部照片</a>--%>
                            <%--</li>--%>
                            <%--<li><a><i class="fa fa-comment-o"></i> 未回复</a>--%>
                            <%--</li>--%>
                            <%--<li><a><i class="fa fa-comments-o"></i>已回复</a>--%>
                            <%--</li>--%>
                            <%--<li><a><i class="fa fa-edit"></i>舌苔分类管理</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<!-- /sidebar menu -->--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<!-- top navigation -->--%>
        <%--<div class="top_nav">--%>
            <%--<div class="nav_menu">--%>
                <%--<nav>--%>
                    <%--<div class="nav toggle">--%>
                        <%--<a id="menu_toggle"><i class="fa fa-bars"></i></a>--%>
                    <%--</div>--%>

                    <%--<ul class="nav navbar-nav navbar-right">--%>
                        <%--<li class="">--%>
                            <%--<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">--%>
                                <%--&lt;%&ndash;@Todo 医生&ndash;%&gt;--%>
                                <%--<img src="images/img.jpg" alt="">医生--%>
                                <%--<span class=" fa fa-angle-down"></span>--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu dropdown-usermenu pull-right">--%>
                                <%--<li><a href="login.html"><i class="fa fa-sign-out pull-right"></i>退出登陆</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>

                        <%--<li role="presentation" class="dropdown">--%>
                            <%--<a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">--%>
                                <%--<i class="fa fa-envelope-o"></i>--%>
                                <%--<span class="badge bg-green">2</span>--%>
                            <%--</a>--%>
                            <%--<ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">--%>
                                <%--<li>--%>
                                    <%--<a>--%>
                                        <%--<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>--%>
                                        <%--<span>--%>
                                            <%--<span>新的舌苔照片</span>--%>
                                            <%--<span class="time">3 mins ago</span>--%>
                                        <%--</span>--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a>--%>
                                        <%--<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>--%>
                                        <%--<span>--%>
                                            <%--<span>新的舌苔照片</span>--%>
                                            <%--<span class="time">12 mins ago</span>--%>
                                        <%--</span>--%>
                                    <%--</a>--%>
                                <%--</li>--%>

                                <%--<li>--%>
                                    <%--<div class="text-center">--%>
                                        <%--<a>--%>
                                            <%--<strong>查看所有未回复照片</strong>--%>
                                            <%--<i class="fa fa-angle-right"></i>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</nav>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<!-- /top navigation -->--%>

        <%--<!-- page content -->--%>
        <%--<div class="right_col" role="main">--%>
            <%--<div class="">--%>
                <%--<div class="clearfix"></div>--%>

                <%--<div class="row">--%>
                    <%--<div class="col-md-12">--%>
                        <%--<div class="x_panel">--%>
                            <%--<div class="x_title">--%>
                                <%--<h2>全部舌苔照片</h2>--%>
                                <%--<div class="clearfix"></div>--%>
                            <%--</div>--%>
                            <%--<div class="x_content">--%>

                                <%--<div class="row">--%>
                                    <%--&lt;%&ndash;@Todo 一张图片&ndash;%&gt;--%>
                                    <%--<c:forEach items="${photos}" var="photo">--%>
                                        <%--<div class="col-md-55">--%>
                                            <%--<div class="thumbnail">--%>
                                                <%--<div class="image view view-first">--%>
                                                    <%--&lt;%&ndash;@Todo 图片的位置&ndash;%&gt;--%>
                                                    <%--<img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />--%>
                                                    <%--<div class="mask">--%>
                                                        <%--<p>添加分类、回复照片</p>--%>
                                                        <%--<div class="tools tools-bottom">--%>
                                                            <%--<a href="#"><i class="fa fa-link"></i></a>--%>
                                                            <%--<a href="#"><i class="fa fa-pencil"></i></a>--%>
                                                            <%--<a href="#"><i class="fa fa-times"></i></a>--%>
                                                        <%--</div>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="caption">--%>
                                                    <%--<p>--%>
                                                        <%--&lt;%&ndash;@Todo 这张图片的标签 一个或多个&ndash;%&gt;--%>
                                                        <%--<c:forEach items="${photo.tags}" var="tag">--%>
                                                            <%--${tag}&nbsp;--%>
                                                        <%--</c:forEach>--%>
                                                    <%--</p>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</c:forEach>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
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