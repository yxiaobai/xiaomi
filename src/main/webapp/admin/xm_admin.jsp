<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城--商品管理首页</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
    <style>
        .paging{
            background: #eaffdf;
            height:50px;
            line-height: 50px;
        }
        .page{
            background: #F00;
        }
    </style>
    <c:if test="${showall==null}">
        <c:redirect url="http://localhost:8080/admin" />
    </c:if>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">商品管理</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='xm_add.jsp'">
            <span class="icon-plus-square-o"></span>添加商品</button>
    </div>
    <table class="table table-hover text-center">
        <tr>
            <th width="5%">编号</th>
            <th width="7%">大分类ID</th>
            <th width="8%">名称</th>
            <th width="13%">描述</th>
            <th width="8%">服务</th>
            <th width="8%">图片</th>
            <th width="7%">图片链接</th>
            <th width="5%">价钱</th>
            <th width="5%">新品</th>
            <th width="6%">优惠商品</th>
            <th width="5%">上下架</th>
            <th width="6%">推荐商品</th>
            <th width="16%">操作</th>
        </tr>
        <c:forEach items="${showall}" var="xm">
            <tr>

                <td>${xm.goodsID}</td>
                <td>${xm.c_ID}</td>
                <td>${xm.goodsName}</td>
                <td>${xm.goodsIntroduce}</td>
                <td>${xm.service}</td>
                <td><img src="<%= request.getContextPath()%>/img/goodsInfo/${xm.goodsImg}" width="100"></td>
                <td>${xm.goodsUrl}</td>
                <td>${xm.marketPrice}</td>
                <td>${xm.isNew}</td>
                <td>${xm.discount}</td>
                <td>${xm.flag}</td>
                <td>${xm.class_cId}</td>
                <td>
                    <div class="button-group">
                        <a type="button" class="button border-main" href="/goods_updateById?goodsID=${xm.goodsID}"><span class="icon-edit"></span>修改</a>
                        <a class="button border-red" href="/del?goodsID=${xm.goodsID}" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>


        <center>
            <div class="paging">
        <td><a href="${admin}?page=${page.firstPage}">首页</a></td>
        <c:if test="${page.hasPreviousPage}">
            <td><a href="${admin}?page=${page.prePage}">上一页</a></td>
        </c:if>
        <c:if test="${page.hasNextPage}">
            <td><a href="${admin}?page=${page.nextPage}">下一页</a></td>
        </c:if>
        <td><a href="${admin}?page=${page.lastPage}">末页</a></td>
        &nbsp;
        <td>第${page.pageNum}页|共${page.pages}页|共${page.total}条</td>
            </div>
        </center>







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
