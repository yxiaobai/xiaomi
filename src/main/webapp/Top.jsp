<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>小米官网</title>
<link rel="stylesheet" href="css/index/common.css">
<link rel="stylesheet" href="css/index/index.css">

<link href="<%=request.getContextPath()%>/js/jq-ui/jquery-ui.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/jq-ui/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jq-ui/jquery-ui.js"></script>



</head>
<body>
<!--headerTop-->
<div class="header-top">
    <div class="container clear">
        <div class="fl">
            <ul class="clear">
                <li class="fl navbar-nav" style="padding: 0"><a href="javascript:">小米商城</a> <span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">MIII </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">我聊 </a> <span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">游戏 </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">多看阅读 </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">云服务 </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">金融 </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">小米网移动版 </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">问题反馈 </a><span>|</span></li>
                <li class="fl navbar-nav"><a href="javascript:">Select Region</a></li>
            </ul>
        </div>
        <div class="fr">

            <%
                if (session.getAttribute("member")==null){
            %>
            <a href="registers.jsp" class="login" >注册</a> <span>|</span>
            <a href="login.jsp" class="register">登陆</a><span>|</span>
            <%
            }else{
            %>
            欢迎你：<%=session.getAttribute("member")%>
            <a href="loginout.jsp" class="register">注销</a>
            <a href="percen" class="tz">个人中心</a>
            <%
                }
            %>





            <a href="shoppingCar" class="cart">
                <i class="iconfont cart-mini">&#xe621;</i>
                购物车（<span class="carnum">0</span>）
                <div class="cart-menu">
                    <span class="carNull"></span>
                    <ul>
                        <%--<li>
                            <img src="" class="carImg">
                            <span class="carName"></span>
                            <span class="carPrice"></span>
                        </li>--%>
                    </ul>
                </div>
            </a>
        </div>
    </div>
</div>
<script>
    $(function () {
        $.ajax({
            url:'carNums',
            type:'post',
            success:function (a) {
                $(".carnum").html(a);
            }
        })
        $.ajax({
            url:'carIndexShow',
            type:'post',
            dataType: 'text',
            success:function (data) {
                //遍历List集合
                if(data=="[]"){
                    $(".carNull").html("购物车中还没有商品，赶紧选购吧！")
                }else{
                    var dataObj=eval("("+data+")");
                    for(var i=0;i<dataObj.length;i++){
                        //alert(dataObj[i].goodsID+" "+dataObj[i].goodsName);
                        $(".carNull").next().append("<li><a href='shoppingCar'><img src=\"img/goodsInfo/"+dataObj[i].goodsImg+"\" class=\"carImg\"> <span class=\"carName\">"+dataObj[i].goodsName+"</span> <span class=\"carPrice\">￥"+dataObj[i].marketPrice+"</span></a> </li>")
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
<!--navbar-->
<div class="header-navbar container">
    <a href="index" class="logo fl">
        <img class="center" src="img/index/logo-footer.png" alt="">
    </a>
    <div class="nav fl">
        <ul class="clear nav-item">
            <li class="fl "><a class="link" href="javascript:"><span class="text">小米手机</span></a></li>
            <li class="fl"><a class="link" href="javascript:"><span class="text">红米</span></a></li>
            <li class="fl"><a class="link" href="javascript:"><span class="text">平板 · 笔记本</span></a></li>
            <li class="fl"><a class="link" href="javascript:"><span class="text">电视</span></a></li>
            <li class="fl"><a class="link" href="javascript:"><span class="text">盒子 · 影音</span></a></li>
            <li class="fl"><a class="link" href="javascript:"><span class="text">路由器</span></a></li>
            <li class="fl"><a class="link" href="javascript:"><span class="text">智能硬件</span></a></li>
            <li class="fl"><a class="link" href="Service.jsp"><span class="text">服务</span></a></li>
            <li class="fl"><a class="link" href="community"><span class="text">社区</span></a></li>
        </ul>
    </div>
    <div class="fr clear nav-rt">
        <form class="search-form">
            <input type="text" name="userName" id="userName" id="search" class="search-text">

            <a href="javascript:" class="search-btn">
                <span class="iconfont center">搜</span>
            </a>


        </form>
    </div>
</div>
<div class="header-nav-menu header-nav-menu-active">
    <%--小米手机--%>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 1&& a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
    <%--红米--%>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 2 && a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
    <%--平板--%>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 3 || goods.c_ID ==4 && a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
    <%--电视--%>
    </ul>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 5 && a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
    <%--盒子--%>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 5 || goods.c_ID ==6 && a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
    <%--路由器--%>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 7 && a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
    <%--智能硬件--%>
    <ul class="children-list clear">
        <c:set var="a" value="1"></c:set>
        <c:set var="a" value="1"></c:set>
        <c:forEach items="${goodsAll}" var="goods">
            <c:if test="${goods.c_ID == 8 && a<7}">
                <c:set var="a" value="${a+1}"></c:set>
                <li class="first">
                    <div class="figure-thumb figure">
                        <a href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="">
                        </a>
                    </div>
                    <div class="title">
                        <a href="javascript:">${goods.goodsName}</a>
                    </div>
                    <p class="price">${goods.marketPrice}</p>
                </li>
            </c:if>
        </c:forEach>
    </ul>
</div>
</body>
<script>
    $(function () {
        $("#userName").autocomplete({
            source: function( request, response ) {
                $.ajax({
                    type:"post",
                    url: "auto",
                    dataType: "json",
                    data:{
                        userName: request.term,
                    },
                    success: function( data ) {
                        response( $.map( data, function( item ) {
                            return {
                                //lable为下拉列表显示数据源。
                                // value为选中放入到文本框的值
                                // 这种方式可以自定义显示
                                lable:item.goodsName,
                                value: item.goodsName,
                                ids:item.goodsID
                            }
                        }));
                    }
                });
            },
            minLength: 1,
            select: function( event, ui ) {
                $("#userName").val(ui.item.userName);
                $('.search-btn').attr('href','details?goodsID='+ui.item.ids)
            }
        });
    })
</script>
</html>

<a href="ji.jsp"></a>