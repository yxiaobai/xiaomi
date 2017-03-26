<%@ page language="java" pageEncoding="UTF-8"%>
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
<div class="panel admin-panel" id="add">
    <div class="panel-head"><strong><span class="icon-key"></span>添加分类信息</strong></div>
    <div class="body-content">
        <form action="/class_add" method="post" enctype="multipart/form-data" class="form-x">
            <div class="form-group">
                <div class="label">
                    <label>商品分类：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="class_name" data-validate="required:请输入商品名" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>推荐商品：</label>
                </div>
                <div class="field" style="padding-top:8px;">
                    <label><input type="radio" name="class_cId" value="1" checked>推荐1</label>
                    <label><input type="radio" name="class_cId" value="2" checked>推荐2</label>
                    <label><input type="radio" name="class_cId" value="0">不推荐</label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    <a href="xm_adminClass.jsp" class="button bg-main icon-check-square-o">返回</a>
                </div>
            </div>
    </form>
    </div>
</div>
</body>
</html>
