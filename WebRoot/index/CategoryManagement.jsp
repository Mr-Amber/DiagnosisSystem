<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%--查看所有舌苔分类 增删改查舌苔分类--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="../js/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../js/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../js/vendors/nprogress/nprogress.css" rel="stylesheet">


    <!-- Custom Theme Style -->
    <link href="../js/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="＃" class="site_title"><i class="fa fa-paw"></i> <span>在线医疗系统</span></a>
                </div>

                <div class="clearfix"></div>
                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>欢迎您,</span>
                        <!--@Todo 医生名-->
                        <h2>医生</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->
                <br />
                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <ul class="nav side-menu">
                            <li class="active"><a><i class="fa fa-photo"></i>全部照片</a>
                            </li>
                            <li><a><i class="fa fa-comment-o"></i> 未回复</a>
                            </li>
                            <li><a><i class="fa fa-comments-o"></i>已回复</a>
                            </li>
                            <li><a><i class="fa fa-edit"></i>舌苔分类管理</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <%--@Todo 医生--%>
                                <img src="images/img.jpg" alt="">医生
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i>退出登陆</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">2</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                                <span>新的舌苔照片</span>
                                <span class="time">3 mins ago</span>
                              </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                                <span>新的舌苔照片</span>
                                <span class="time">12 mins ago</span>
                              </span>
                                    </a>
                                </li>

                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>查看所有未回复照片</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>舌苔分类管理</h3>

                        <br />
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="">
                                <span class="input-group-btn">
                                    <%--@Todo 添加大类--%>
                                    <button class="btn btn-default" type="button">添加大类</button>
                                </span>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="clearfix"></div>
                <%--@Todo 大类--%>
                <div class="row">
                    <c:forEach items="${symptoms}" var="symptom">
                        <div class="col-md-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <%--@Todo 大类名称--%>
                                    <h2>大类名称</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                            <%--@Todo 删除大类--%>
                                        <li><a class="close-link">删除大类<i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <div class="bs-example-popovers">
                                        <c:forEach items="${symptoms}" var="symptom">
                                            <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="">
                                                <%--@Todo 小类名称--%>
                                                小类名称
                                            </button>
                                        </c:forEach>

                                    </div>
                                    <br />

                                    <div class="ln_solid"></div>

                                    <div class="input-group">
                                        <input type="text" class="form-control">
                                        <span class="input-group-btn">
                                            <%--@Todo 添加--%>
                                            <button type="button" class="btn btn-primary">添加小类</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
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

