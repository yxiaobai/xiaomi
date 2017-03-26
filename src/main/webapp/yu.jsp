<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1226" />
    <link rel="stylesheet" href="css/order/base.min.css" />
    <link rel="stylesheet" type="text/css" href="css/order/pay-confirm.min.css" />
 </head>
<jsp:include page="Top.jsp"></jsp:include>
<body>
<div class="page-main">
    <div class="container confirm-box">

            <div class="section section-order">
                <div class="order-info clearfix">
                    <div class="fl">
                        <h2 class="title">订单提交成功！去付款咯～</h2>
                        <p class="order-time" id="J_deliverDesc">我们将尽快为您发货</p>
                        <p class="order-time">请在<span class="pay-time-tip">0小时14分</span>内完成支付, 超时后将取消订单</p>
                        <p class="post-info" id="J_postInfo">
                            收货信息：<%=session.getAttribute("member")%>  ${as.u_phone} &nbsp;&nbsp;
                            ${as.u_address}                                            </p>
                    </div>
                    <div class="fr">
                        <p class="total">
                            应付总额：<span class="money"><em>${param.moneys}.00</em>元</span>
                        </p>
                      </div>
                </div>
                <i class="iconfont icon-right">&#x221a;</i>
            </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
