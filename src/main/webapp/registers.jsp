<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta charset="utf-8">
    <link href="<%=request.getContextPath()%>/css/login-register/reg.css" rel="stylesheet" >
    <script src="<%=request.getContextPath()%>/js/login-reg/reg.js"></script>
    <script src="<%=request.getContextPath()%>/js/shequ/jquery.min.js"></script>
</head>
<body>
<div id="box">
    <div id="box_one">
        <div id="box_one_no">
            <img src="img/shequ/logo-footer.png" id="box_logo">
        </div>
        <div id="box_one_nos">
            <h1>注册小米账号</h1>
        </div>
        <div id="box_ones_s">
            <form action="xm_user/u_save" method="post" onsubmit="return checkForm()" name="form1">
                <table align="center" style="padding-top:30px">
                    <tr>
                        <td class="a"><span class="bixuan">*</span>用户名：</td>
                        <td>
                            <input type="text" name="u_name" id="user"  onblur="cheakUser()" class="inputWidth" />
                            <div id="userId" class="red"></div>
                        </td>
                    </tr>

                    <tr>
                        <td class="a"><span class="bixuan">*</span>密码：</td>
                        <td><input type="password" name="u_pass" id="pass"
                                   onblur="cheakPsw()" class="inputWidth"/>
                            <div id="pswId" class="red"></div>
                        </td>
                    </tr>

                    <tr>
                        <td class="a"><span class="bixuan">*</span>确认密码：</td>
                        <td><input type="password" name="upsw" id="upsw"
                                   onblur="cheakPsw2()" class="inputWidth"/>
                            <div id="upswId" class="red"></div>
                        </td>
                    </tr>

                    <tr>
                        <td class="a"><span class="bixuan">*</span>邮箱：</td>
                        <td><input type="text" name="u_email" id="maii"
                                   onblur="cheakMails()" class="inputWidth"/>
                            <div id="mailId" class="red"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="a"><span class="bixuan">*</span>手机号码：</td>
                        <td><input type="text" name="u_phone" id="phone"
                                   onblur="checkPhone()" class="inputWidth" maxlength="11"/>
                            <div id="phoneId" class="red"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="a">真实姓名：</td>
                        <td><input type="text" name="u_tname" id="uname"
                                   onblur="checkUname()" class="inputWidth"/>
                            <div id="unameId" class="red"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="a"><span class="bixuan">*</span>性别：</td>
                        <td><input type="radio" value="男" name="u_sex" checked/>男
                            <input
                                    type="radio" value="女" name="u_sex"/>女
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="a"><span class="bixuan">*</span>地址：</td>
                        <td><input type="text" name="u_address" id="adds"  onblur="checkAdds()" class="inputWidth" />
                            <div id="addsId" class="red"></div>
                        </td>
                    </tr>

                    <tr>
                        <td align="right">头像：</td>
                        <td><label><input type="radio" name="u_face" value="01"
                                          checked><img src="img/shequ/01.jpg"></label>&nbsp; <label>
                            <input type="radio" name="u_face" value="02"><img
                                src="img/shequ/02.jpg"></label>&nbsp; <label>
                            <input type="radio" name="u_face" value="03"><img
                                src="img/shequ/03.jpg"></label>&nbsp; <label>
                            <input
                                    type="radio" name="u_face" value="04"><img
                                src="img/shequ/04.jpg"></label>&nbsp; <label><input
                                type="radio" name="u_face" value="05"><img
                                src="img/shequ/05.jpg"></label>&nbsp;</td>
                    </tr>
                </table>
                <div class="submitStyle">
                    <input type="submit" value="注册" id="button"/>
                </div>
            </form>
        </div>
    </div>

</div>
<script src="<%=request.getContextPath()%>/js/shequ/jquery.min.js"></script>
<script>
    $
</script>
</body>
</html>
