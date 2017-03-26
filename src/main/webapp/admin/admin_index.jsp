<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
    <script src="<%=request.getContextPath()%>/resources/js/admin/jquery.js"></script>
    <%
        if( request.getSession().getAttribute("admins")==null){
            response.sendRedirect("admin_login.jsp");
        }
    %>

</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1><img src="<%=request.getContextPath()%>/resources/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
    </div>

    <div class="logo margin-big-left fadein-top">
        欢迎：<%= request.getSession().getAttribute("admins")%>
    </div>
    <div class="head-l"><a class="button button-little bg-green" href="/index" target="_blank"><span class="icon-home"></span> 前台首页</a>
        &nbsp;&nbsp;<a class="button button-little bg-red" href="admin/admin_login.jsp"><span class="icon-power-off"></span> 退出登录</a>
    </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <h2><span class="icon-user"></span>基本设置</h2>
    <ul style="display:block">
        <li><a href="admin/xm_adminClass" target="right"><span class="icon-caret-right"></span>商品分类管理</a></li>
        <li><a href="admin" target="right"><span class="icon-caret-right"></span>商品管理</a></li>
        <li><a href="carouselAdmin" target="right"><span class="icon-caret-right"></span>轮播管理</a></li>
        <li><a href="/admin_query_id" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
        <li><a href="order_info" target="right"><span class="icon-caret-right"></span>订单管理</a></li>
        <li><a href="xm_detail_order" target="right"><span class="icon-caret-right"></span>订单详情</a></li>
        <li><a href="admin_reply" target="right"><span class="icon-caret-right"></span>帖子管理</a></li>
    </ul>
</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>
<ul class="bread">
    <li><a href="#" target="right" class="icon-home"> 首页</a></li>
    <li><a href="#" id="a_leader_txt">网站信息</a></li>
</ul>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="admin/right.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>
