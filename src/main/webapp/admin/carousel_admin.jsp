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
    <c:if test="${carouselshow==null}">
        <c:redirect url="http://localhost:8080/carouselAdmin" />
    </c:if>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">轮播管理</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='admin/carousel_add.jsp'">
            <span class="icon-plus-square-o"></span>添加轮播
        </button>
    </div>
    <table class="table table-hover text-center">
        <tr>
            <th width="10%">图片ID</th>
            <th width="10%">标题</th>
            <th width="20%">图片</th>
            <th width="20%">连接</th>
            <th width="10%">是否显示</th>
            <th width="30%">操作</th>
        </tr>
        <c:forEach items="${carouselshow}" var="xm">
                <td>${xm.id}</td>
                <td>${xm.title}</td>
                <td><img src="../img/carousel/${xm.img}" width="100" ></td>
                <td>${xm.url}</td>
                <td>
                    <c:if test="${xm.flag == 'n'}">`
                    <label><input type="checkbox" checked value="${xm.id}" class="xs">显示</label>
                    </c:if>
                    <c:if test="${xm.flag == 'y'}">
                    <label style="opacity: .5"><input type="checkbox" value="${xm.id}" class="nxs">不显示</label>
                    </c:if>
                </td>
                <td>
                    <div class="button-group">
                        <a type="button" class="button border-main" href="/carousel_updateVal?id=${xm.id}"><span class="icon-edit"></span>修改</a>
                        <a class="button border-red" href="/carousel_del?id=${xm.id}" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
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
