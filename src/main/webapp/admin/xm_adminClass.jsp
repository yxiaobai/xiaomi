<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品分类管理</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
    <c:if test="${xm_goodsClass==null}">
        <c:redirect url="http://localhost:8080/xm_goods_class" />
    </c:if>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">商品分类管理</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='admin/xm_addClass.jsp'">
            <span class="icon-plus-square-o"></span>添加分类</button>
    </div>
    <table class="table table-hover text-center">
        <tr>
            <th width="7%">分类ID</th>
            <th width="8%">名称</th>
            <th width="8%">商品推荐</th>
            <th width="15%">操作</th>
        </tr>
        <c:forEach items="${xm_goodsClass}" var="xm">
            <tr>

                <td>${xm.class_id}</td>
                <td>${xm.class_name}</td>
                <td>${xm.class_cId}</td>
                <td>
                    <div class="button-group">
                        <a type="button" class="button border-main" href="/class_ById?class_id=${xm.class_id}"><span class="icon-edit"></span>修改</a>
                        <a class="button border-red" href="/class_delete?class_id=${xm.class_id}" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                    </div>
                </td>
            </tr>
        </c:forEach>

    </table>
    <script>
        function del(id){
            var a=confirm("您确定要删除吗?");
            if(a==true){
                return true;
            }else{
                return false;
            }
        }
    </script>
</div>
</body>
</html>
