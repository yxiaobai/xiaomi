<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>注册</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login/style.css" />
<body><style type="text/css">
    .tb960x90 {display:none!important;display:none}
</style>
<div class="register-container">
    <h1>注册</h1>

    <form action="" method="post" id="registerForm">
        <div>
            <input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="text" name="phone_number" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
        </div>
        <div>
            <input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
        </div>

        <button id="submit" type="submit">注 册</button>
    </form>
    <a href="admin_login.jsp">
        <button type="button" class="register-tis">已经有账号？</button>
    </a>

</div>

<script src="<%=request.getContextPath()%>/resources/js/login/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/login/common.js"></script>
<!--背景图片自动更换-->
<script src="<%=request.getContextPath()%>/resources/js/login/supersized.3.2.7.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/login/supersized-init.js"></script>
<!--表单验证-->
<script src="<%=request.getContextPath()%>/resources/js/login/jquery.validate.min.js?var1.14.0"></script>


</body>
</html>
