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
    <div class="panel-head"><strong><span class="icon-key"></span>添加商品信息</strong></div>
    <div class="body-content">
        <form action="/save" method="post" enctype="multipart/form-data" class="form-x">
            <div class="form-group">
                <div class="label">
                    <label>商品分类：</label>
                </div>
                <div class="field">
                <select name="c_ID" style="padding:5px 15px; border:1px solid #ddd;">
                    <option value="1">小米手机</option>
                    <option value="2">红米</option>
                    <option value="3">服务</option>
                    <option value="4">社区</option>
                    <option value="5">硬件</option>
                </select>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>商品名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="goodsName" data-validate="required:请输入商品名" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>描述：</label>
                </div>
                <div class="field">
                    <textarea type="text" class="input" name="goodsIntroduce" style="height:120px;" value=""></textarea>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>服务：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="service" data-validate="required:请输入服务" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>图片：</label>
                </div>
                <div class="field">
                    <input type="file" class="input w50" value="" name="goodsImg" multiple />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>图片链接：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="goodsUrl" data-validate="required:请输入图片链接" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>价格：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="marketPrice" data-validate="required:请输入价格" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>是否新品：</label>
                </div>
                <div class="field" style="padding-top:8px;">
                    <label><input type="radio" name="isNew" value="1" checked>是</label>
                    <label><input type="radio" name="isNew" value="0">不是</label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>是否优惠商品：</label>
                </div>
                <div class="field" style="padding-top:8px;">
                    <label><input type="radio" name="discount" value="1" checked>是</label>
                    <label><input type="radio" name="discount" value="0">不是</label>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>商品上下架：</label>
                </div>
                <div class="field" style="padding-top:8px;">
                    <label><input type="radio" name="flag" value="y" checked>上架</label>
                    <label><input type="radio" name="flag" value="n">下架</label>
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
                    <a href="xm_admin.jsp" class="button bg-main icon-check-square-o">返回</a>
                </div>
            </div>
    </form>
    </div>
</div>
</body>
</html>
