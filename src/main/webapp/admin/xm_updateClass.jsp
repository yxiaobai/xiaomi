<%@page import="java.util.Map" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
    <script src="<%=request.getContextPath()%>/resources/js/admin/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/admin/pintuer.js"></script>
</head>
<body>

<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-key"></span>编辑分类信息</strong></div>
    <div class="body-content">
        <form action="/class_update" method="post" class="form-x">
            <div class="form-group">
                <div class="label">
                    <label>商品分类id：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="${goodsClassById.class_id}" name="class_id" style="display: none"/>
                    <div class="input w50">${goodsClassById.class_id}</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>分类名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="${goodsClassById.class_name}" name="class_name"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>推荐商品：</label>
                </div>
                <div class="field">
                    <label><input type="radio" name="class_cId" value="1" checked>推荐1</label>
                    <label><input type="radio" name="class_cId" value="2" checked>推荐2</label>
                    <label><input type="radio" name="class_cId" value="0">不推荐</label>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    <a href="admin/xm_adminClass.jsp" class="button bg-main icon-check-square-o">返回</a>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
