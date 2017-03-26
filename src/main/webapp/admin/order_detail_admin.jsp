<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
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
    <c:if test="${show_order==null}">
        <c:redirect url="http://localhost:8080/xm_detail_order" />
    </c:if>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">订单详细管理</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='/admin/order_detail_add.jsp'">
            <span class="icon-plus-square-o"></span>添加详细订单
        </button>
    </div>

    <table class="table table-hover text-center">
        <tr>
            <th width="7%">订单ID</th>
            <th width="7%">订单号</th>
            <th width="20%">订单添加日期</th>
            <th width="8%">商品ID</th>
            <th width="7%">商品名称</th>
            <th width="7%">商品描述</th>
            <th width="7%">商品颜色</th>
            <th width="7%">商品数量</th>
            <th width="7%">商品单价</th>
            <th width="7%">订单总计</th>
            <th width="20%">操作</th>
        </tr>

        <c:forEach items="${show_order}" var="i">
            <tr>
                <td>${i.order_id}</td>
                <td>${i.order_sn}</td>
                <td>${i.order_data}</td>
                <td>${i.goodsid}</td>
                <td>${i.pro_name}</td>
                <td>${i.pro_desc}</td>
                <td>${i.pro_color}</td>
                <td>${i.pro_num}</td>
                <td>${i.pro_price}</td>
                <td>${i.tal_price}</td>
                <td>
                    <a type="button" class="button border-main" href="/ord_query_id?order_id=${i.order_id}"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="/xm_order_del?order_id=${i.order_id}" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
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
<script>
    $(function(){
       $(".nxs").click(function(){
           var aa=this.value;
           location.href = "carousel_updateFlag?id="+aa+"&flag=n";
       }) ;
        $(".xs").click(function(){
            var aa=this.value;
            location.href = "carousel_updateFlag?id="+aa+"&flag=y";
        }) ;
    });
</script>
</html>
