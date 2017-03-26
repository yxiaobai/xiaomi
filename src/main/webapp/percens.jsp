<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<!doctype html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="UTF-8" />
    <title>个人中心</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1226" />
    <meta name="description" content="" />
    <meta name="keywords" content="小米商城" />

    <link rel="stylesheet" href="css/personcrnter/base.min.css" />
    <link rel="stylesheet" href="css/personcrnter/main.min.css" />


    <script src="js/personcrnter/base.min.js"></script>
    <script src="js/personcrnter/user.min.js"></script>
    <%--
    <img src="" class="carImg">
    <span class="carName"></span>
    <span class="carPrice"></span>--%>
    <style>
        .ko li{
            float: left;
        }

        .carImgs{
            width: 150px;
            height: 150px;
            padding-left: 10px;
        }


    </style>
</head>
<jsp:include page="Top.jsp"></jsp:include>
<body>

<div class="page-main user-main">
    <div class="container">
        <div class="row">
            <div class="span4">
                <div class="uc-box uc-sub-box">
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">个人中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li class="active"><a href="percen">我的个人中心</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">订单中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="percens" target="_blank">我的订单</a></li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="span16">
                <div class="uc-box uc-main-box">
                    <div class="uc-content-box portal-content-box">
                        <div class="box-bd">

                            <div class="cart-menus">
                                <span class="carNulls"></span>
                                <ul class="ko">
                                    <%--<li>
                                        <img src="" class="carImg">
                                        <span class="carName"></span>
                                        <span class="carPrice"></span>
                                    </li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script>
    $(function () {
        $.ajax({
            url:'carIndexShow',
            type:'post',
            dataType: 'text',
            success:function (data) {
                //遍历List集合
                if(data=="[]"){
                    $(".carNulls").html("购物车中还没有商品，赶紧选购吧！")
                }else{
                    var dataObj=eval("("+data+")");
                    for(var i=0;i<dataObj.length;i++){
                        //alert(dataObj[i].goodsID+" "+dataObj[i].goodsName);
                        $(".carNulls").next().append("<li><a href='shoppingCar'><img src=\"img/goodsInfo/"+dataObj[i].goodsImg+"\" class=\"carImgs\"> <span class=\"carNames\">"+dataObj[i].goodsName+"</span> <span class=\"carPrices\">￥"+dataObj[i].marketPrice+"</span></a> </li>")
                    }
                }

                //alert($(".carNull").next().html());
                //遍历List集合
                /*var jsonObj=eval("("+data+")");
                 $.each(jsonObj, function (i, item) {
                 alert(item.goodsID + ","  + item.goodsName);
                 });*/
                //$(".cart-menu").html(data);
            }
        })
    })
</script>
</body>



