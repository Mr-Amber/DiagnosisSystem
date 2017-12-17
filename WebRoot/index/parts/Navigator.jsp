
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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