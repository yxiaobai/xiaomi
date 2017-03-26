<%@page import="java.util.Map"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
    <script src="<%=request.getContextPath()%>/resources/js/admin/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/admin/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-key"></span>修改轮播信息</strong></div>
    <div class="body-content">
        <form action="/carousel_update" method="post" class="form-x">
            <div class="form-group">
                <div class="label">
                    <label>ID：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="${updateVal.id}" name="id" style="display: none" />
                    <div class="input w50" name="id" >${updateVal.id}</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="${updateVal.title}" name="title" />
                    <div class="tips"></div>
                </div>
            </div>
            <%--<div class="form-group">图片：<input type="file" name="img" value="${updateVal.img}"><br></div>--%>

            <div class="form-group">
                <div class="label">
                    <label>链接：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="url" value="${updateVal.url}"  />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>显示：</label>
                </div>
                <div class="field">
                    <div class="button-group radio">

                        <label class="button active">
                            <span class="icon icon-check"></span>
                            <input name="flag" value="y" type="radio" checked="checked">是
                        </label>

                        <label class="button active"><span class="icon icon-times"></span>
                            <input name="flag" value="n"  type="radio" checked="checked">否
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    <a href="admin/carousel_admin.jsp" class="button bg-main icon-check-square-o">返回</a>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
