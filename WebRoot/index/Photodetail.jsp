<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--舌苔照片详情查看 包括回复和打标签--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>舌苔查看 </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
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
                        <%--@Todo 医生--%>
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
                                <%--@Todo 医生名--%>
                                <img src="images/img.jpg" alt="">医生
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <%--@Todo 退出登录跳转--%>
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i>退出登陆</a></li>
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

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>照片详情</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <%--@Todo 用户上传的所有照片 尚未写点击缩略图并展示详情的部分--%>
                                    <div class="product-image">
                                        <%--@Todo 大图根据缩略图的响应--%>
                                        <img src="images/prod-1.jpg" alt="..." />
                                    </div>
                                    <div class="product_gallery">
                                        <c:forEach items="${photos}" var="photo">
                                            <a>
                                                <%--@Todo 缩略图地址--%>
                                                <img src="images/prod-2.jpg" alt="...">
                                            </a>
                                        </c:forEach>
                                    </div>
                                </div>

                                <div class="col-md-5 col-sm-5 col-xs-12" style="border:0px solid #e5e5e5;">

                                    <h3 class="prod_title">选择分类标签</h3>
                                    <br />
                                    <form class="form-horizontal form-label-left">
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <select class="form-control">
                                                    <option>大类一</option>
                                                    <option>大类二</option>
                                                    <option>大类三</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <select class="form-control">
                                                    <option>分类一</option>
                                                    <option>分类二</option>
                                                    <option>分类三</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br />
                                        <br />
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-8">
                                            <button class="btn btn-round btn-primary" type="reset">提交分类选择</button>
                                        </div>

                                    </form>
                                    <div class="">
                                        <br /><br />
                                        <div class="ln_solid"></div>
                                        <h2>现有标签</h2>
                                        <br />
                                        <ul class="list-inline prod_size">
                                            <li>
                                                <button type="button" class="btn btn-default btn-xs">寒热虚实</button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn-default btn-xs">阴虚</button>
                                            </li>
                                        </ul>
                                    </div>

                                    <br />

                                </div>


                                <div class="col-md-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>医生回复</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <ul class="list-unstyled msg_list">
                                                <li>
                                                    <a>
                                    <span class="image">
                                      <img src="images/img.jpg" alt="img">
                                    </span>
                                                        <span>
                                      <span>John Smith</span>
                                    </span>
                                                        <span class="message">
                                      Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that
                                    </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <label for="message"></label>
                                        <div class="ln_solid"></div>
                                        <label for="message">添加回复</label>
                                        <textarea id="message" required="required" class="form-control" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.." data-parsley-validation-threshold="10"></textarea>
                                        <br />
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-5">
                                            <span class="btn btn-primary">添加回复</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
<script src="../vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="../vendors/nprogress/nprogress.js"></script>

<!-- Custom Theme Scripts -->
<script src="../build/js/custom.min.js"></script>
</body>
</html>