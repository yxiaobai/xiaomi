<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
</head>
<c:if test="${showadmins == null}">
    <c:redirect url="http://localhost:8080/admin_reply"/>
</c:if>
<body>
<table class="table table-hover text-center">
    <tr>
        <th width="10%">帖子ID</th>
        <th width="10%">用户</th>
        <th width="10%">标题</th>
        <th width="10%">帖子内容</th>
        <th width="30%">操作</th>
    </tr>
    <tr>
    <c:forEach items="${showadmins}" var="x_m">
        <td width="10%">${x_m.c_id}</td>
        <td width="10%">${x_m.id}</td>
        <td width="10%">${x_m.title}</td>
        <td width="10%">${x_m.content}</td>



        <td>
            <div class="button-group">

                <a class="button border-red" href="/xms_dels?c_id=${x_m.c_id}" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
            </div>
        </td>

        </tr>

    </c:forEach>
</table>
</body>
</html>
