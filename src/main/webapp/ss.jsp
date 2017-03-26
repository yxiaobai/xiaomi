<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>可拖拽和带二维码的登录窗口设计效果</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .tc{display: block;padding: 1em 1.5em;border: 3px solid #fff;font-weight: 700;margin: 50px auto;background:#1d7db1;color: #fff;}
        .tc a:hover{opacity: 0.6;}
    </style>
</head>
<body>


<button class="tc">点击登录</button>

<div id="gray"></div>

<div class="popup" id="popup">
    <div class="top_nav" id='top_nav'>
        <div align="center">
            <span>登录账号</span>
            <a class="guanbi"></a>
        </div>
    </div>
    <div class="min">
        <div class="tc_login">
            <div class="left">
                <h4 align="center">手机扫描</h4>
                <div align="center"><img src="images/erweima.jpg" width="150" height="150" /></div>
                <dd>
                    <div align="center">扫描二维码登录</div>
                </dd>
            </div>
            <div class="right">
                <form method="POST" name="form_login" target="_top">
                    <div align="center">
                        <a href="">短信快捷登录</a>
                        <i class="icon-mobile-phone"></i>
                        <input type="text" name="name" id="name" required="required" placeholder="用户名" autocomplete="off" class="input_yh">
                        <input type="password" name="pass" id="pass" required="required" placeholder="密码" autocomplete="off" class="input_mm">
                    </div>
                    <dd>
                        <div align="center"><a href="">遇到登录问题</a></div>
                    </dd>
                    <div align="center">
                        <input type="submit" class="button" title="Sign In" value="登录">
                    </div>
                </form>
                <dd>
                    <div align="center"><a href="#" target="_blank">立即注册</a></div>
                </dd>
                <hr align="center" />
                <div align="center">期待更多功能 </div>
            </div>
        </div>
    </div>
</div>


<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
    //窗口效果
    //点击登录class为tc 显示
    $(".tc").click(function(){
        $("#gray").show();
        $("#popup").show();//查找ID为popup的DIV show()显示#gray
        tc_center();
    });
    //点击关闭按钮
    $("a.guanbi").click(function(){
        $("#gray").hide();
        $("#popup").hide();//查找ID为popup的DIV hide()隐藏
    })

    //窗口水平居中
    $(window).resize(function(){
        tc_center();
    });

    function tc_center(){
        var _top=($(window).height()-$(".popup").height())/2;
        var _left=($(window).width()-$(".popup").width())/2;

        $(".popup").css({top:_top,left:_left});
    }
</script>

<script type="text/javascript">
    $(document).ready(function(){

        $(".top_nav").mousedown(function(e){
            $(this).css("cursor","move");//改变鼠标指针的形状
            var offset = $(this).offset();//DIV在页面的位置
            var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离
            var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离
            $(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件

                $(".popup").stop();//加上这个之后

                var _x = ev.pageX - x;//获得X轴方向移动的值
                var _y = ev.pageY - y;//获得Y轴方向移动的值

                $(".popup").animate({left:_x+"px",top:_y+"px"},10);
            });

        });

        $(document).mouseup(function() {
            $(".popup").css("cursor","default");
            $(this).unbind("mousemove");
        });
    })
</script>
</body>
</html>