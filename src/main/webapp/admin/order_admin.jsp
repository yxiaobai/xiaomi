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
    <c:if test="${order_infoAll==null}">
        <c:redirect url="http://localhost:8080/order_info" />
    </c:if>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">订单管理</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='/admin/order_add.jsp'">
            <span class="icon-plus-square-o"></span>添加订单
        </button>
    </div>

    <table class="table table-hover text-center">
        <tr>
            <th width="8%">订单ID</th>
            <th width="8%">用户ID</th>
            <th width="8%">订单价格</th>
            <th width="8%">订单收货人</th>
            <th width="12%">收货地址</th>
            <th width="10%">收货人电话</th>
            <th width="10%">收货人联系电话</th>
            <th width="10%">订单备注</th>
            <th width="5%">状态</th>
            <th width="20%">操作</th>
        </tr>

        <c:forEach items="${order_infoAll}" var="info">
            <tr>
                <td>${info.order_id}</td>
                <td>${info.user_id}</td>
                <td>${info.order_price}</td>
                <td>${info.order_name}</td>
                <td>${info.order_addr}</td>
                <td>${info.order_phone}</td>
                <td>${info.order_tel}</td>
                <td>${info.order_desc}</td>
                <td>${info.state}</td>
                <td>
                    <a type="button" class="button border-main" href="/ord_update_id?order_id=${info.order_id}"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="/order_del?order_id=${info.order_id}" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
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
