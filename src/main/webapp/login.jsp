<%@page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="stylesheet" href="css/login/bootstrap.min.css" type="text/css" media="screen, project, print"/>
    <link rel="stylesheet" href="css/login/jquery.fancybox-1.3.4.css" type="text/css" media="screen, project, print"/>
    <link rel="stylesheet" type="text/css" href="css/login/jquery-ui.min.css"/>
    <link rel="stylesheet" href="css/login/main-cn.css?ver=5" type="text/css" media="screen, project, print"/>
    <link rel="stylesheet" href="css/login/mobile.css?ver=2" type="text/css" media="screen, project, print"/>
    <script src="//assets.adobedtm.com/852e96eed9e29df1fb13035d1f233bb8c2c56c8a/satelliteLib-a647f567a5845369df41d9808a92ab370cc03e8f.js"></script>
    <script type="text/javascript" src="js/login/SearchResult.js?ver=2"></script>

    <script type="text/javascript">
        (function (url, win, doc, myName) {
            win[myName] = win[myName] || function () {
                    (win[myName].q = win[myName].q || []).push(arguments);
                };
            setTimeout(function () {
                var iframe = document.createElement('iframe');
                (iframe.frameElement || iframe).style.cssText = 'display:none';
                iframe.src = 'javascript:false';
                var where = document.getElementsByTagName('script')[0];
                where.parentNode.insertBefore(iframe, where);
                var doc = iframe.contentWindow.document;
                doc.open().write('<body onload="' +
                    'var js = document.createElement(\'script\');' +
                    'js.src = \'' + url + '?hr=' + new Date().getTime() + '\';' +
                    'document.body.appendChild(js);">');
                doc.close();
            }, 0);
        }('http://app.huawei.com/hwa-c/configresource/js/general/ha_f.js', window, document, 'ha'));

        ha("set", "siteId", "www");

    </script>
    <!--[if lt IE 9 ]>
    <script type="text/javascript" src="/Assets/CBG/js/html5shiv.min.js"></script>
    <script type="text/javascript" src="/Assets/CBG/js/respond.min.js"></script>
    <![endif]-->
    <link rel="Shortcut Icon" href="/Assets/img/img_ent_en_logo_ico.ico"/>
    <script type="text/javascript" src="/Assets/CBG/js/modernizr-2.8.3.min.js"></script>
    <title>
        登录 - 小米
    </title>
    <style>
        html {
            min-height: 100%;
            position: relative;
        }

        body {
            position: static;
            padding-bottom: 60px;
            min-height: 100%;
        }

        #container {
            position: static;
        }

        #footer.sign-footer {
            position: absolute;
            bottom: 0;
        }
    </style>
    <style>
        #op{
            width: 700px; height: 473px;
        }
        #ff{
            width: 700px;
            padding-left:130px;
            padding-top: 10px;
        }
        input{width: 436px; height: 54px;
            border: 2px solid #b9babe;

            border-radius: 4px;
            padding-left: 60px;
            line-height: 24px; }
        #n{
            background: url(img/index/uesr-hui.jpg) no-repeat top left;
        }
        #p{background:url(img/index/powss.jpg) no-repeat top left;}
        #btn{
            background: #dd3435 !important;
            color: white;
            text-align: center;
            border-radius: 2px;
        }
        .red {
            color: #F00;
            float: right;
            font-size: 14px;
            width: 145px;
            height: 31px;
            line-height: 31px;
            margin-left: 60px;
            margin-top: 10px;
        }

    </style>
</head>
<body>


<!-- heard-html-star -->


<!-- heard-html-end -->
<!-- content -->
<!-- 登录开始  -->


<div class="container  login-info-cell">
    <div class="row">
        <div class="col-sm-7 center-block float-none">
            <div class="red-title clearboth">登录</div>
            <div class="sign-contact">
                <div class="red-line">&nbsp;</div>
            </div>
            <script>
                function checkForms() {
                    return cheakUser() && cheakPsw() ;
                }
                //表单不能为空
                function checkForms() {
                    for (var i = 0; i < document.form1.elements.length - 1; i++) {
                        if (document.form2.elements[i].value == "") {
                            alert("表单项不能为空")
                            document.form2.elements[i].focus();
                            return false;
                        }
                    }
                    return true;
                }
                function cheakUser() {
                    var users = document.getElementById("n").value;
                    if (users.trim().length != 0) {
                        for (var i = 0; i < user.length; i++) {
                            var j = users.substring(i, i + 1);
                            if (j >= 0) {
                                document.getElementById("userId").innerHTML = "姓名中不能包含数字";
                                return false;
                            }
                        }
                        document.getElementById("userId").innerHTML = "";
                        return true;
                    }
                    else {
                        document.getElementById("userId").innerHTML = "用户名不能为空";
                        document.getElementById("n").focus();
                        return false;
                    }
                }


                function cheakPsw() {
                    var psw = document.getElementById("p").value;
                    if (psw.trim().length < 6) {
                        document.getElementById("pswId").innerHTML = "密码不能为空";
                        document.getElementById("p").focus();
                        return false;
                    }
                    else {
                        document.getElementById("pswId").innerHTML = "";
                        return true;
                    }
                }

            </script>
            <div id="op">
                <form action="/logins" method="post" onsubmit="return checkForms()" id="ff" name="form2">
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="name" id="n" placeholder="邮箱/账号"  onblur="cheakUser()">
                                <div id="userId" class="red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="pass" id="p" placeholder="密码"  onblur="cheakPsw()">
                                <div id="pswId" class="red"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="登录" id="btn">
                            </td>
                        </tr>




                    </table>
                </form>
            </div>

        </div>
    </div>
</div>

<!-- 登录结束  -->
<!-- content -->

<!-- footer-html-star -->
<div id="footer" class="sign-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-7 center-block float-none">
                <p>版权所有 © 小米技术有限公司 1998-2016。保留一切权利。</p>
            </div>
        </div>
    </div>
</div>
<!-- footer-html-end -->
<script type="text/javascript" src="/Assets/CBG/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/Assets/CBG/js/plugins.js"></script>
<script type="text/javascript" src="/Assets/CBG/js/jwplayer.js"></script>
<script type="text/javascript" src="/Assets/CBG/js/main.js"></script>
<script type="text/javascript" src="/Assets/CBG/js/CBGcommon.js"></script>
<script type="text/javascript" src="/Assets/CBG/js/cbglogin.js"></script>

</body>
</html>
