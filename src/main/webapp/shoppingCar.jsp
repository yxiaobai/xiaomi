<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>成功加入购物车</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index/common.css">
    <link rel="stylesheet" href="css/index/index.css">
    <link rel="stylesheet" href="css/shoppingCar/cart.css">
</head>
<body>
<%--top--%>
<jsp:include page="Top.jsp"/>
<%--<div class="site-header site-mini-header">
    <div class="container">
        <div class="header-logo">
            <img class="log ir" src="img/index/logo-footer.png" alt="">
        </div>
        <div class="header-title has-more" id="J_miniHeaderTitle"><h2>我的购物车</h2>
            <p>温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</p></div>
        <div class="topbar-info" id="J_userInfo">
            <a class="link" href="//order.mi.com/site/login?redirectUrl=http://static.mi.com/cart/"
               data-needlogin="true" data-stat-id="bf3aa4c80c0ac789"
               onclick="_msq.push(['trackEvent', '08fae3d5cb3abaaf-bf3aa4c80c0ac789', '//order.mi.com/site/login', 'pcpid', '']);">登录</a><span
                class="sep">|</span><a class="link" href="https://account.xiaomi.com/pass/register"
                                       data-stat-id="749b1369201c13fb"
                                       onclick="_msq.push(['trackEvent', '08fae3d5cb3abaaf-749b1369201c13fb', 'https://account.xiaomi.com/pass/register', 'pcpid', '']);">注册</a>
        </div>
    </div>
</div>--%>


<div class="page-main">

    <div class="container">
        <div class="cart-loading loading hide" id="J_cartLoading">
            <div class="loader"></div>
        </div>
        <%--<div class="cart-empty hide" id="J_cartEmpty">
            <h2>您的购物车还是空的！</h2>
            <p class="login-desc">登录后将显示您之前加入的商品</p>
            <a href="#" class="btn btn-primary btn-login" id="J_loginBtn" data-stat-id="7874490dbcbc1e60"
               onclick="_msq.push(['trackEvent', '08fae3d5cb3abaaf-7874490dbcbc1e60', '#', 'pcpid', '']);">立即登录</a>
            <a href="//list.mi.com/0" class="btn btn-primary btn-shoping J_goShoping" data-stat-id="4658a7dfd89505fc"
               onclick="_msq.push(['trackEvent', '08fae3d5cb3abaaf-4658a7dfd89505fc', '//list.mi.com/0', 'pcpid', '']);">马上去购物</a>
        </div>--%>
        <div id="J_cartBox" class="">
            <div class="cart-goods-list">
                <div class="list-head clearfix">
                    <div class="col col-check">
                        <%--<i class="iconfont icon-checkbox icon-checkbox-selected" id="J_selectAll">√</i>取消全选--%>
                        <i class="iconfont icon-checkbox" id="J_selectAll">√</i>全选
                    </div>
                    <div class="col col-img">&nbsp;</div>
                    <div class="col col-name">商品名称</div>
                    <div class="col col-price">单价</div>
                    <div class="col col-num">数量</div>
                    <div class="col col-total">小计</div>
                    <div class="col col-action">操作</div>
                </div>
                <div class="list-body" id="J_cartListBody">
                    <c:set var="a" value="0"></c:set>
                    <c:forEach items="${goods}" var="g">
                    <%--商品--%>
                    <div class="item-box i_${a+1}">
                        <div class="item-table J_cartGoods">
                            <div class="item-row clearfix">
                                <%--选择框--%>
                                <div class="col col-check">
                                    <%--<i class="iconfont icon-checkbox icon-checkbox-selected" id="J_select">√</i>--%>
                                    <i class="iconfont icon-checkbox iyou" id="J_select">√</i>
                                </div>
                                <%--图片--%>
                                <div class="col col-img">
                                    <a href="#" target="_blank"><img
                                                                     src="img/goodsInfo/${g.goodsImg}"
                                                                     width="80" height="80"> </a>
                                </div>
                                <%--商品名称--%>
                                <div class="col col-name">
                                    <h3 class="name"><a href="" target="${g.goodsID}">${g.goodsName} </a></h3>
                                </div>
                                <%--价格--%>
                                <div class="col col-price"><i id="money_${a+1}"> ${g.marketPrice}</i>元</div>
                                <%--数量--%>
                                <div class="col col-num">
                                    <div class="change-goods-num clearfix J_changeGoodsNum">
                                        <a href="javascript:void(0)" class="J_minus">
                                            <i class="iconfont">&nbsp;-</i></a>
                                        <input tyep="text" name="2164100003_0_buy" value="1" data-num="1" readonly="true" class="goods-num J_goodsNum">
                                        <a href="javascript:void(0)" class="J_plus"><i class="iconfont">&nbsp;+</i></a>
                                    </div>
                                </div>
                                <%--小计--%>
                                <div class="col col-total"><i id="moneyx_${a+1}"> 0</i>元 <p class="pre-info"></p></div>
                                <%--删除--%>
                                <div class="col col-action">
                                    <a id="2164100003_0_buy" data-msg="确定删除吗？" href="javascript:void(0);" title="删除"
                                       class="del J_delGoods">
                                        <i class="iconfont">×</i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                        <c:set var="a" value="${a+1}"></c:set>
                    </c:forEach>
                    <%--<div class="item-box i_2">
                        <div class="item-table J_cartGoods">

                            <div class="item-row clearfix">
                                &lt;%&ndash;选择框&ndash;%&gt;
                                <div class="col col-check">
                                    &lt;%&ndash;<i class="iconfont icon-checkbox icon-checkbox-selected" id="J_select">√</i>&ndash;%&gt;
                                    <i class="iconfont icon-checkbox iyou" id="J_select">√</i>
                                </div>
                                &lt;%&ndash;图片&ndash;%&gt;
                                <div class="col col-img">
                                    <a href="#" target="_blank"><img alt=""
                                                                     src="#"
                                                                     width="80" height="80"> </a>
                                </div>
                                &lt;%&ndash;商品名称&ndash;%&gt;
                                <div class="col col-name">
                                    <h3 class="name"><a href="//item.mi.com/1164100004.html"
                                                        target="_blank">米兔积木机器人 </a></h3>
                                </div>
                                &lt;%&ndash;价格&ndash;%&gt;
                                <div class="col col-price"><i id="money_2"> 599</i>元</div>
                                &lt;%&ndash;数量&ndash;%&gt;
                                <div class="col col-num">
                                    <div class="change-goods-num clearfix J_changeGoodsNum">
                                        <a href="javascript:void(0)" class="J_minus"><i class="iconfont">
                                            &nbsp;-</i></a>
                                        <input tyep="text" name="2164100003_0_buy" value="1" data-num="1"
                                               data-buylimit="1" autocomplete="off" class="goods-num J_goodsNum">
                                        <a href="javascript:void(0)" class="J_plus"><i class="iconfont">&nbsp;+</i></a>
                                    </div>
                                </div>
                                &lt;%&ndash;小计&ndash;%&gt;
                                <div class="col col-total"><i id="moneyx_2"> 0</i>元 <p class="pre-info"></p></div>
                                &lt;%&ndash;删除&ndash;%&gt;
                                <div class="col col-action">
                                    <a id="2164100003_0_buy1" data-msg="确定删除吗？" href="javascript:void(0);" title="删除"
                                       class="del J_delGoods">
                                        <i class="iconfont" style="margin-left: -10px">×</i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="item-box i_3">
                        <div class="item-table J_cartGoods">
                            <div class="item-row clearfix">
                                &lt;%&ndash;选择框&ndash;%&gt;
                                <div class="col col-check">
                                    &lt;%&ndash;<i class="iconfont icon-checkbox icon-checkbox-selected" id="J_select">√</i>&ndash;%&gt;
                                    <i class="iconfont icon-checkbox iyou" id="J_select">√</i>
                                </div>
                                &lt;%&ndash;图片&ndash;%&gt;
                                <div class="col col-img">
                                    <a href="#" target="_blank"><img alt=""
                                                                     src="#"
                                                                     width="80" height="80"> </a>
                                </div>
                                &lt;%&ndash;商品名称&ndash;%&gt;
                                <div class="col col-name">
                                    <h3 class="name"><a href="//item.mi.com/1164100004.html"
                                                        target="_blank">米兔积木机器人 </a></h3>
                                </div>
                                &lt;%&ndash;价格&ndash;%&gt;
                                <div class="col col-price"><i id="money_3"> 699</i>元</div>
                                &lt;%&ndash;数量&ndash;%&gt;
                                <div class="col col-num">
                                    <div class="change-goods-num clearfix J_changeGoodsNum">
                                        <a href="javascript:void(0)" class="J_minus"><i class="iconfont">
                                            &nbsp;-</i></a>
                                        <input tyep="text" name="2164100003_0_buy" value="1" data-num="1"
                                               data-buylimit="1" autocomplete="off" class="goods-num J_goodsNum">
                                        <a href="javascript:void(0)" class="J_plus"><i class="iconfont">&nbsp;+</i></a>
                                    </div>
                                </div>
                                &lt;%&ndash;小计&ndash;%&gt;
                                <div class="col col-total"><i id="moneyx_3"> 0</i>元 <p class="pre-info"></p></div>
                                &lt;%&ndash;删除&ndash;%&gt;
                                <div class="col col-action">
                                    <a id="2164100003_0_buy2" data-msg="确定删除吗？" href="javascript:void(0);" title="删除"
                                       class="del J_delGoods">
                                        <i class="iconfont" style="margin-left: -10px">×</i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="cart-bar clearfix" id="J_cartBar">
                        <div class="section-left">
                            <a href="#" class="back-shopping J_goShoping">继续购物</a>
                            <span class="cart-total">共 <i id="J_cartTotalNum" class="num">0</i> 件商品，已选择 <i id="J_selTotalNum" class="choose">0</i> 件</span>
                            <span class="cart-coudan hide" id="J_coudanTip">
                            ，还需 <i id="J_postFreeBalance">150</i> 元即可免邮费
                                <a href="javascript:void(0);" id="J_showCoudan">立即凑单</a>
                        </span>
                        </div>
                        <span class="activity-money hide">
                        活动优惠：减 <i id="J_cartActivityMoney">0</i> 元
                        </span>
                        <span class="total-price">
                        <i class="it">合计（不含运费）：</i><em id="J_cartTotalPrice"><i id="moneys">0</i></em>元
                        </span>
                        <a href="javascript:void(0)" class="btn-disabled wei" id="J_goCheckout">去结算</a>

                        <div class="no-select-tip" id="J_noSelectTip">
                            请勾选需要结算的商品
                            <i class="arrow arrow-a"></i>
                            <i class="arrow arrow-b"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-recommend" id="J_miHistoryBox"></div>
        </div>
    </div>
</div>
</body>
<%--footer--%>
<jsp:include page="footer.jsp"/>

<script src="js/shoppingCar/shoppingCar.js"></script>

<script>

    $(function () {
        $("#J_goCheckout").click(function () {
           location.href = "order?moneys="+Number($("#moneys").html());
        })

    })
</script>
</html>
