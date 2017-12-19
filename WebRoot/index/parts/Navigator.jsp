
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="＃" class="site_title"><i class="fa fa-paw"></i> <span>在线医疗系统</span></a>
        </div>

        <div class="clearfix"></div>
        <!-- menu profile quick info -->
        <c:if test="${ !empty user}">
            <div class="profile clearfix">
                <div class="profile_pic">
                    <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                </div>
                <div class="profile_info">
                    <span>欢迎您,</span>
                    <h2>${ user.uname}医生</h2>
                </div>
            </div>
        </c:if>
        <!-- /menu profile quick info -->
        <br />
        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <ul class="nav side-menu">
                    <li class="active"><a><i class="fa fa-photo"></i>全部照片</a>
                    </li>
                    <c:if test="${ !empty user}">
                        <li><a><i class="fa fa-comment-o"></i> 未回复</a>
                        </li>
                        <li><a><i class="fa fa-comments-o"></i>已回复</a>
                        </li>
                        <li><a><i class="fa fa-edit"></i>舌苔分类管理</a>
                        </li>
                    </c:if>
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
            <c:choose>
                <c:when test="${ empty user}">
                    <a class="ui inverted login item" data-toggle="modal" data-target="#loginModal">
                        登录
                    </a>
                    <a class="ui inverted item" href="join">
                        注册
                    </a>
                </c:when>
                <c:otherwise>
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
                </c:otherwise>
            </c:choose>
        </nav>
    </div>
</div>
<!-- /top navigation -->

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
            </div>
            <div class="modal-body">
                <form  id="loginForm">
                    <div class="input-group">
                        <span class="input-group-addon" id="user-addon"><i class="fa fa-user"></i></span>
                        <input id="loginAccount" type="text" class="form-control loginAccount" placeholder="请输入您的账号" aria-describedby="user-addon">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" id="password-addon"><i class="fa fa-lock"></i></span>
                        <input id="loginPassword" type="password" class="form-control loginPassword" placeholder="请输入您的密码" aria-describedby="password-addon">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary login" id="login-button">登录</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>