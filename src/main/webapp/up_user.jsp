<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

<style>
    .form-group{
        width: 700px;
        height: 90px;
        margin: 0 auto;
    }
    .op {
        width: 700px;
        height: 90px;
        margin: 0 auto
    }

</style>
</head>
<c:if test="${showusers == null}">
    <c:redirect url="http://localhost:8080/up_user"/>
</c:if>
<body>
<form action="/per_update" method="post">
<div class="form-group">
    <div class="label">
        <label>用户ID：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_id" value="${showusers.u_id}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>用户网名：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_name" value="${showusers.u_name}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>用户密码：</label>
    </div>
    <div class="field">

        <input type="text" class="input w50" name="u_pass" value="${showusers.u_pass}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>用户邮箱：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_email" value="${showusers.u_email}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>电话号码：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_phone" value="${showusers.u_phone}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>真实姓名：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_tname" value="${showusers.u_tname}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>性别：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_sex" value="${showusers.u_sex}" />
        <div class="tips"></div>
    </div>
</div>

<div class="form-group">
    <div class="label">
        <label>地址：</label>
    </div>
    <div class="field">
        <input type="text" class="input w50" name="u_address" value="${showusers.u_address}" />
        <div class="tips"></div>
    </div>
</div>

    <div class="form-group">
        <div class="label">
            <label>投：</label>
        </div>
        <div class="field">
            <input type="text" class="input w50" name="u_face" value="${showusers.u_face}" />
            <div class="tips"></div>
        </div>
    </div>

    <div class="form-group">
        <div class="label">
            <label>时间：</label>
        </div>
        <div class="field">
            <input type="text" class="input w50" name="u_time" value="${showusers.u_time}" />
            <div class="tips"></div>
        </div>
    </div>




    <div class="field">
        <div class="op">
        <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        <a href="percen.jsp" class="button bg-main icon-check-square-o">返回</a>
        </div>
    </div>
</form>



</body>
</html>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">