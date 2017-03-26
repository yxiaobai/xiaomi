<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta charset="UTF-8" />
    <title>填写订单信息</title>
    <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="//s01.mifile.cn/css/base.min.css?v2017a13" />
    <link rel="stylesheet" type="text/css" href="//s01.mifile.cn/css/checkout.min.css?v=20170120" />
</head>
<body>
<div class="site-header site-mini-header">
    <div class="container">
        <div class="header-logo">
            <a class="logo " href="//www.mi.com/index.html" title="小米官网"></a>
        </div>
        <div class="header-title" id="J_miniHeaderTitle"></div>
        <div class="topbar-info" id="J_userInfo">
            <a class="link" href="//order.mi.com/site/login" data-needlogin="true">登录</a><span class="sep">|</span><a class="link" href="https://account.xiaomi.com/pass/register" >注册</a>        </div>
    </div>
</div>
<!-- .site-mini-header END -->
<%--<script type="text/javascript">
    var checkoutConfig={
        addressMatch:'common',
        addressMatchVarName: new Function('return ' + 'data'),
        hasPresales:false,
        hasBigTv:false,
        hasAir:false,
        hasScales:false,
        hasWater:false,
        hasWater2:false,
        hasMobile:false,
        hasEboiler:false,
        hasEvent:false,
        hasGiftcard:false,
        totalPrice:579.00,
        needPayAmount:579,
        postage:10,//
        postFree:true,
        bcPrice:150,
        activityDiscountMoney:0.00,//活动优惠
        showCouponBox:0,
        showCaptcha:'0',
        invoice:[{"type":"electron","value":4,"desc":"\u7535\u5b50\u53d1\u7968","checked":true},{"type":"personal","value":1,"desc":"\u7eb8\u8d28\u53d1\u7968","checked":false}],
        quickOrder: '0',
        hasBigPro: false,
        onlinePayTips: '支持微信支付、支付宝、银联、财付通、小米钱包等',
        subsidyPrice: 0};
</script>--%>
<div class="page-main">
    <div class="container">
        <div class="checkout-box">
            <div class="section section-address">
                <div class="section-header clearfix">
                    <h3 class="title">收货地址</h3>
                    <div class="more">
                    </div>
                </div>
                <div class="section-body clearfix" id="J_addressList">
                    <!-- addresslist begin -->
                    <!-- addresslist end -->
                    <div class="address-item address-item-new" id="J_newAddress">
                        <i class="iconfont">&#xe609;</i>
                        添加新地址
                    </div>
                </div>
            </div>
            <div class="section section-options section-payment clearfix">
                <div class="section-header">
                    <h3 class="title">支付方式</h3>
                </div>
                <div class="section-body clearfix">
                    <ul class="J_optionList options ">
                        <li data-type="pay" class="J_option selected" data-value="1">
                            在线支付                            <span>
                            （支持微信支付、支付宝、银联、财付通、小米钱包等）                            </span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="section section-options section-shipment clearfix">
                <div class="section-header">
                    <h3 class="title">配送方式</h3>
                </div>
                <div class="section-body clearfix">
                    <ul class="clearfix J_optionList options ">
                        <li data-type="shipment" class="J_option selected" data-amount="0" data-value="1">
                            快递配送（免运费）                                                    </li>
                    </ul>

                    <div class="service-self-tip" id="J_serviceSelfTip"></div>
                </div>
            </div>

            <div class="section section-options section-time clearfix">
                <div class="section-header">
                    <h3 class="title">配送时间</h3>
                </div>
                <div class="section-body clearfix">
                    <ul class="J_optionList options options-list clearfix">
                        <!-- besttime start -->
                        <li data-type="time" class="J_option selected" data-value="1">
                            不限送货时间：<span>周一至周日</span>                        </li>
                        <li data-type="time" class="J_option " data-value="2">
                            工作日送货：<span>周一至周五</span>                        </li>
                        <li data-type="time" class="J_option " data-value="3">
                            双休日、假日送货：<span>周六至周日</span>                        </li>
                        <!-- besttime end -->
                    </ul>
                </div>
            </div>
            <div class="section section-goods">
                <div class="section-header clearfix">
                    <h3 class="title">商品及优惠券</h3>
                    <div class="more">
                        <a href="//static.mi.com/cart/">返回购物车<i class="iconfont">&#xe621;</i></a>
                    </div>
                </div>
                <div class="section-body">
                    <ul class="goods-list" id="J_goodsList">
                        <li class="clearfix">
                            <div class="col col-img">
                                <img src="//i1.mifile.cn/a1/pms_1464592109.19494450!30x30.jpg" width="30" height="30">
                            </div>
                            <div class="col col-name">
                                <a href="//item.mi.com/1162200010.html" target="_blank">
                                    1MORE三单元圈铁耳机 金色                                    </a>
                            </div>
                            <div class="col col-price">
                                579元 x 1                            </div>
                            <div class="col col-status">
                                有货
                            </div>
                            <div class="col col-total">
                                579元
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="section section-count clearfix">
                <div class="count-actions" >
                    <!-- 优惠券 -->
                    <div class="coupon-trigger" id="J_useCoupon"><i class="iconfont icon-plus">&#xe609;</i>使用优惠券</div>
                    <div class="coupon-result hide" id="J_couponResult">
                        <i class="iconfont icon-selected">&#xe618;</i>
                        正在使用：<span class="coupon-title" id="J_couponTitle"></span>
                        <a href="javascript:void(0)" id="J_changeConpon">［修改］</a>
                    </div>

                    <div class="ecard-box hide" id="J_ecardBox">
                        <ul class="clearfix tab-switch J_tabSwitch">
                            <li>已绑定的礼品卡</li>
                            <li>输入礼品卡以绑定</li>
                        </ul>
                        <div class="tab-container">
                            <!-- 选卡 -->
                            <div class="tab-content ecard-list">
                                <div class="empty hide" id="J_ecardEmpty">
                                    <p>没有发现可用的礼品卡！</p>
                                    <a href="javascript:void(0);" class="btn btn-gray J_ecardCancel">取消</a>
                                </div>
                                <div class="hide">
                                    <div id="J_ecardList">
                                    </div>
                                    <div class="ecard-info" id="J_ecardInfo"></div>
                                    <div class="btns">
                                        <a href="javascript:void(0);" class="btn btn-primary" id="J_useSelEcard">确认以上选择</a>
                                        <a href="javascript:void(0);" class="btn btn-gray J_ecardCancel">取消 不使用礼品卡</a>
                                    </div>
                                </div>
                            </div>

                            <!-- 绑卡 -->
                            <div class="tab-content ecard-input hide">
                                <div class="form-section">
                                    <span class="input-title">密码：</span>
                                    <!-- <label class="input-label" for="ecard_password">请输入礼品卡密码</label> -->
                                    <input class="input-text input-card" type="text" id="ecard_password" name="ecard_password" placeholder="请输入礼品卡密码" />
                                </div>
                                <div class="form-section clearfix">
                                    <span class="input-title">验证码：</span>
                                    <!-- <label class="input-label" for="ecard_captcha">请输入验证码</label> -->
                                    <input class="input-text input-captcha" type="text" id="ecard_captcha" placeholder="请输入验证码" name="ecard_captcha" data-authurl="//captcha.hd.mi.com/captcha/auth?answer={answer}&service=order.mi.com&_ov=1" />
                                    <div class="captcha-img">
                                        <img alt="验证码" title="点击更换验证码" id="J_ecardCaptchaImg">
                                    </div>
                                </div>
                                <div class="form-section form-btns">
                                    <button class="btn btn-primary" id="J_bindEcard">绑定礼品卡</button>
                                    <button class="btn btn-gray J_ecardCancel">取消</button>
                                </div>
                            </div>
                        </div>

                        <div class="recycle-box hide"  id="J_recycleBox">
                            <div class="ecard-list recycle-list">
                                <div id="J_recycleList">
                                </div>
                                <div class="ecard-info" id="J_recycleInfo"></div>
                                <div class="btns">
                                    <a href="javascript:void(0);" class="btn btn-primary" id="J_useSelRecycle">确认以上选择</a>
                                    <a href="javascript:void(0);" class="btn btn-gray J_recycleCancel">取消 不使用换新券</a>
                                </div>
                            </div>
                        </div>

                        <div class="sms-box hide" id="J_ecardSmsBox">
                            <div class="title">已向您绑定的手机<span id="J_ecardMobile">（135****6910）</span>发送验证码 <i class="icon-qa" id="J_ecardQa">?</i></div>
                            <div class="form-section clearfix">
                                <label class="input-label" for="ecard_sms">请输入验证码</label>
                                <input class="input-text input-ecard" type="text" id="ecard_sms" name="ecard_sms" />
                                <span id="J_smsCountdown" class="countdown hide"><i></i>秒后重新发送</span>
                                <a href="javascript:void(0);" class="repeat hide" id="J_repeatSms">重新发送</a>
                            </div>
                            <div class="form-section form-btns">
                                <button class="btn btn-primary" id="J_checkEcardSms">确定</button>
                                <button class="btn btn-gray" id="J_cancelEcardSms">取消</button>
                            </div>
                            <div class="qa-detail hide" id="J_ecardQaDetail">
                                为保证您的资金安全，消费时需通过绑定手机的认证。若您绑定的手机号已变更，可前往小米账号中心修改绑定的手机号，如果原来的手机号已无法使用，可通过申诉的方式更换手机号。<a href="https://account.xiaomi.com/pass/auth/security/home" target="_blank">前往小米账号中心&gt;</a>
                            </div>
                        </div>

                        <div class="loading">
                            <div class="loader"></div>
                        </div>
                    </div>

                    <!-- 加价购 -->
                    <div class="raise-buy-box">
                        <ul id="J_raiseBuyList">
                            <li class="item  J_raiseBuyItem" data-info="{
                                isBatch:'false',
                                productId:'2134900285',
                                goodsId:'2134900285-0-1-1391',
                                actId:'1391',
                                itemid:'8888888_0_bargain_1391_total_1_sale',
                                type:'1'
                            }" data-del-itemid="">
                                <div class="inner">
                                    <i class="iconfont icon-plus">&#xe609;</i>+1元得小米礼品袋                                </div>

                                <div class="add-cart-result">
                                    <a href="javascript:void(0);" class="J_del del"><i class="iconfont">&#xd7;</i></a>
                                    <i class="iconfont icon-selected">&#xe618;</i>已选购：<span class="J_goodsName">+1元得小米礼品袋</span>
                                </div>
                            </li>

                            <!--S 保障计划 产品选择弹框 -->
                            <!--E 保障计划 产品选择弹框 -->
                        </ul>
                    </div>
                </div>

                <div class="money-box" id="J_moneyBox">
                    <ul>
                        <li class="clearfix">
                            <label>商品件数：</label>
                            <span class="val">1件</span>
                        </li>
                        <li class="clearfix">
                            <label>金额合计：</label>
                            <span class="val">579元</span>
                        </li>
                        <li class="clearfix">
                            <label>活动优惠：</label>
                            <span class="val">-0元</span>
                        </li>
                        <li class="clearfix">
                            <label>运费：</label>
                            <span class="val"><i data-id="J_postageVal">0</i>元</span>
                        </li>
                        <li class="clearfix total-price">
                            <label>应付总额：</label>
                            <span class="val"><em data-id="J_totalPrice">579</em>元</span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="section-bar clearfix">
                <div class="fl">
                    <div class="seleced-address hide" id="J_confirmAddress">
                    </div>
                    <div class="big-pro-tip hide J_confirmBigProTip"></div>
                </div>
                <div class="fr">
                    <a href="javascript:void(0);" class="btn btn-primary" id="J_checkoutToPay">去结算</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 大家点缺货提示 -->
<div class="big-pro-tip-pop hide" id="J_popBigProTip"></div>

<!-- 禮品卡提示 S-->
<div class="modal fade modal-hide modal-lipin" id="J_lipinTip">
    <div class="modal-header">
        <h3 class="title">温馨提示</h3>
    </div>
    <div class="modal-body">
        <p>
            为保障您的利益与安全，下单后礼品卡将会被使用，<br>
            且订单信息将不可修改。请确认收货信息：
        </p>
        <ul>
            <li class="clearfix">
                <strong>收&nbsp;&nbsp;货&nbsp;&nbsp;人：</strong>
                <span id="J_lipinUserName"></span>
            </li>
            <li class="clearfix">
                <strong>联系电话：</strong>
                <span id="J_lipinUserPhone"></span>
            </li>
            <li class="clearfix">
                <strong>收货地址：</strong>
                <span id="J_lipinUserAddress"></span>
            </li>
        </ul>
    </div>
    <div class="modal-footer">
        <a href="javascript:void(0);" class="btn btn-primary" id="J_lipinSubmit">确认下单</a>
        <a href="javascript:void(0);" class="btn btn-gray" data-dismiss="modal">返回修改</a>
    </div>
</div>
<!--  禮品卡提示 E-->

<!-- 预售提示 S-->
<div class="modal fade modal-hide modal-yushou" id="J_yushouTip">
    <div class="modal-header">
        <h3 class="title">请确认收货地址及发货时间</h3>
    </div>
    <div class="modal-body">
        <ul class="content">
            <li>
                <h3>请确认配送地址，提交后不可变更：</h3>
                <p id="J_yushouAddress"> </p>
                <span class="icon icon-1"></span>
            </li>
            <li>
                <h3>支付后发货</h3>
                <p>如您随预售商品一起购买的商品，将与预售商品一起发货</p>
                <span class="icon icon-2"></span>
            </li>
            <li>
                <h3>以支付价格为准</h3>
                <p>如预售产品发生调价，已支付订单价格将不受影响。</p>
                <span class="icon icon-3"></span>
            </li>
        </ul>
    </div>
    <div class="modal-footer">
        <a href="javascript:void(0);" class="btn btn-gray" data-dismiss="modal">返回修改地址</a>
        <a href="javascript:void(0);" class="btn btn-primary" id="J_yushouSubmit">确认并继续下单</a>
    </div>
</div>
<!--  预售提示 E-->

<div class="modal fade modal-hide modal-edit-address" id="J_modalEditAddress">
    <div class="modal-body">
        <iframe height="100%" width="100%"  frameborder="0" allowfullscreen=""></iframe>
    </div>
</div>

<div class="modal fade modal-hide fade modal-alert" id="J_modalAlert">
    <div class="modal-bd">
        <div class="text">
            <h3 id="J_alertMsg"></h3>
        </div>
        <div class="actions">
            <button class="btn btn-primary" data-dismiss="modal">确定</button>
        </div>
        <a class="close" data-dismiss="modal" href="javascript: void(0);"><i class="iconfont">&#xe602;</i></a>
    </div>
</div>

<div class="address-top-bar" id="J_addressTopBar">
    <div class="container">
        <a href="javascript:void(0);" class="btn btn-primary" id="J_addressTopBarBtn">选择该收货地址</a>
        <div class="content" id="J_addressTopCon">
            <span class="uname">名字</span><span class="utel">名字</span>
        </div>
    </div>
</div>


<div class="modal modal-warning modal-hide" id="warning-bargain-1463">
    <div class="modal-hd">
        <h2 class="title">温馨提示</h2>
        <a class="close" data-dismiss="modal" href="javascript: void(0);"><i class="iconfont">&#xe602;</i></a>
    </div>
    <div class="modal-bd">
        <p>
            <b>换卡说明：</b>
            <br/><br/>移动2G / 3G卡升级为移动4G卡
            <br/>传统SIM大卡换小米手机适配的micro卡
        </p>
    </div>
</div>

<div class="modal modal-warning modal-hide" id="warning-bargain-1464">
    <div class="modal-hd">
        <h2 class="title">温馨提示</h2>
        <a class="close" data-dismiss="modal" href="javascript: void(0);"><i class="iconfont">&#xe602;</i></a>
    </div>
    <div class="modal-bd">
        <p>
            <b>换卡说明：</b>
            <br/><br/>移动2G / 3G卡升级为移动4G卡
            <br/>传统SIM大卡换小米手机适配的nano卡
        </p>
    </div>
</div>

<!-- 保险弹窗 -->
<!-- 保险弹窗 -->

<div class="modal in hide modal-baoxian" id="J_baoxian">
    <div class="modal-header">
        <h3>小米意外保障服务/小米意外损坏保险</h3>
        <span class="close" data-dismiss="modal"><i class="iconfont">&#xe602</i></span>
    </div>
    <div class="modal-body">
        <div class="con-1">
            <h4>购买保障服务/保险的设备在意外受损时可获得免费维修或换新</h4>
            <ul class="icon-list clearfix">
                <li>
                    <span class="icon icon-1"></span>
                    屏幕碎裂免费换新屏
                </li>
                <li>
                    <span class="icon icon-2"></span>
                    进水、摔落免费修
                </li>
                <li>
                    <span class="icon icon-3"></span>
                    修好为止
                </li>
            </ul>
            <dl class="xuzhi">
                <dt>为保障您的权益，购买前请仔细阅读：</dt>
                <dd>· 本保障服务/保险目前仅适用于有限的产品类型，不同产品的保障规则会有所差异，请以详细条款为准；</dd>
                <dd>· 本保障服务/保险自您收到设备起，有效期为一年，若您在收到设备7日内取消保障服务/保险，请连同设备一起申请退货。</dd>
                <dd>· 故意行为导致的设备损坏以及盗窃、抢劫、遗失设备等不在服务保障范围内（具体以详细条款为准）。<br>
                    <a href="http://www.mi.com/service/safe" target="_blank" class="J_baoxianMore">阅读详细条款&gt;</a>
                </dd>
            </dl>
        </div>
    </div>
    <div class="modal-footer clearfix">
        <p>
            <span class="J_baoxianAgree"><i class="iconfont icon-checkbox">&#x221a;</i> 我已经阅读并同意</span>《<a  href="http://www.mi.com/service/safe" target="_blank"  class="J_baoxianMore">详细条款</a>》
        </p>
        <a class="btn btn-primary J_buyBaoxian" ><span class="num"></span>确认并购买</a>
        <a class="btn btn-gray" data-dismiss="modal" aria-hidden="true">取消</a>
    </div>
</div>

<script id="J_newAddressTemplate" type="text/x-dot-template">
    <div class="address-item J_addressItem "
         data-address_id="{{=it.address_id}}"
         data-consignee="{{=it.uname}}"
         data-tel="{{=it.phone}}"
         data-province_id="{{=it.province}}"
         data-province_name="{{=it.provinceName}}"
         data-city_id="{{=it.city}}"
         data-city_name="{{=it.cityName}}"
         data-district_id="{{=it.county}}"
         data-district_name="{{=it.countyName}}"
         data-area="{{=it.area}}"
         data-area-name="{{=it.areaName}}"
         data-address="{{=it.address}}"
         data-tag_name="{{=it.tag}}">

        <dl>
            <dt>
                <span class="tag">{{=it.tag}}</span>
                <em class="uname">{{=it.uname}}</em>
            </dt>
            <dd class="utel">{{=it.phone}}</dd>
            <dd class="uaddress">
                {{=it.provinceName}} {{=it.cityName}} {{=it.countyName}} {{=it.areaName}}
                <br>
                {{=it.address}}
            </dd>
        </dl>
        <div class="actions">
            <a href="javascript:void(0);" class="modify J_addressModify">修改</a>
        </div>
    </div>
</script>

<script id="J_checkoutMoneyTemplate" type="text/x-dot-template">
    <ul>
        <li class="clearfix">
            <label>商品件数：</label>
            <span class="val">{{=it.total_count}}件</span>
        </li>
        <li class="clearfix">
            <label>商品总价：</label>
            <span class="val">{{=it.productMoney}}元</span>
        </li>
        {{? it.ecards.ecard_amount}}
        <li class="clearfix">
            <label>券卡支付：</label>
            <span class="val">-{{=it.ecards.ecard_amount}}元</span>
        </li>
        {{? }}
        <li class="clearfix">
            <label>活动优惠：</label>
            <span class="val">-{{=it.activityDiscountMoney}}元</span>
        </li>
        <li class="clearfix">
            <label>优惠券抵扣：</label>
            <span class="val"><i id="J_couponVal">-0</i>元</span>
        </li>
        <li class="clearfix">
            <label>运费：</label>
            <span class="val"><i data-id="J_postageVal">{{=it.shipment}}</i>元</span>
        </li>
        <li class="clearfix total-price">
            <label>应付总额：</label>
            <span class="val"><em data-id="J_totalPrice">{{=it.need_pay_amount}}</em>元</span>
        </li>
    </ul>
</script>

<script id="J_checkoutGoodsTemplate" type="text/x-dot-template">
    {{~it :value:index}}
    <li class="clearfix">
        <div class="col col-img">
            <img src="{{=value.image_url}}" width="30" height="30">
        </div>
        <div class="col col-name">
            <a href="{{=MI.GLOBAL_CONFIG.itemSite}}/{{=value.commodity_id}}.html" target="_blank">
                {{=value.product_name}}
            </a>
        </div>
        <div class="col col-price">
            {{=value.salePrice}}元 x {{=value.num}}
        </div>
        <div class="col col-status">
            有货
        </div>
        <div class="col col-total">
            {{=value.subtotal}}元
        </div>
    </li>
    {{~}}
</script>


<!--结算提示 -->
<script  id="J_tipGoodsTemplate" type="text/x-dot-template">
    <div class="modal fade modal-hide  modal-tip-goods modal-tip-goods-{{=it.data.items.length}}" id="J_modalTipGoods" >
        <div class="modal-hd">
            <h3 class="title">{{=it.msg}}</h3>
            <a class="close" data-dismiss="modal"  href="javascript: void(0);"><i class="iconfont">&#xe602;</i></a>
        </div>
        <div class="modal-bd">
            {{? it.data.items && it.data.items.length}}
            <ul class="list clearfix" id="J_tipGoodskList">
                {{~it.data.items :itemValue:itemIndex}}
                <li>
                    {{? itemValue.image_url}}
                    <img src="{{=itemValue.image_url}}" width="160" height="160" alt="{{=itemValue.product_name}}">
                    {{? }}
                    <h3>{{=itemValue.product_name}}</h3>
                    <p class="price">{{=itemValue.salePrice}}元</p>
                </li>
                {{~}}
            </ul>
            {{? }}
        </div>
        <div class="modal-ft">
            <a href="//static.mi.com/cart/" class="btn btn-primary" >返回购物车</a>
        </div>
    </div>
</script>

<!-- 购物卡列表 -->
<script  id="J_ecardTemplate" type="text/x-dot-template">
    <div class="table-wrapper">
        <ul class="clearfix">
            <li class="col-1">选择</li>
            {{? it.type === 'recycle'}}
            <li class="col-2">券号</li>
            {{?? }}
            <li class="col-2">卡号</li>
            {{? }}
            <li class="col-3">本次使用（元）</li>
            <li class="col-4">余额（元）</li>

            {{? it.type === 'normal'}}
            <li class="col-5">有效期至</li>
            {{? }}
        </ul>
        {{? it.data.length > 5 }}
        <div class="table-scroll">
            {{?? }}
            <div>
                {{? }}
                <table>
                    <tbody>
                    {{~it.data :itemValue:itemIndex}}
                    {{? itemValue.isSel}}
                    <tr class="J_ecardItem selected" data-id="{{=itemValue.card_id}}" data-balance="{{=itemValue.balance}}">
                        {{?? }}
                    <tr class="J_ecardItem" data-id="{{=itemValue.card_id}}" data-balance="{{=itemValue.balance}}">
                        {{? }}
                        <td class="col-1"><i class="iconfont icon-checkbox J_ecardCheckbox">&#x221a;</i></td>
                        <td class="col-2">
                            {{=itemValue.card_id}}
                            {{? itemValue.type_id === '14'}}
                            （{{=itemValue.name}}）
                            {{? }}
                        </td>
                        <td class="col-3 use J_income">0</td>
                        <td class="col-4 J_balance">{{=itemValue.balance}}</td>

                        {{? it.type === 'normal'}}
                        <td class="col-5">{{=itemValue.end_time_format}}</td>
                        {{? }}
                    </tr>
                    {{~}}
                    </tbody>
                </table>
            </div>
        </div>
</script><div class="site-footer">
    <div class="container">
        <div class="footer-service">
            <ul class="list-service clearfix">
                <li><a rel="nofollow" href="//www.mi.com/static/fast/" target="_blank"><i class="iconfont">&#xe634;</i>预约维修服务</a></li>
                <li><a rel="nofollow" href="//www.mi.com/service/exchange#back" target="_blank"><i class="iconfont">&#xe635;</i>7天无理由退货</a></li>
                <li><a rel="nofollow" href="//www.mi.com/service/exchange#free" target="_blank"><i class="iconfont">&#xe636;</i>15天免费换货</a></li>
                <li><a rel="nofollow" href="//www.mi.com/service/exchange#mail" target="_blank"><i class="iconfont">&#xe638;</i>满150元包邮</a></li>
                <li><a rel="nofollow" href="//www.mi.com/static/maintainlocation/" target="_blank"><i class="iconfont">&#xe637;</i>520余家售后网点</a></li>
            </ul>
        </div>
        <div class="footer-links clearfix">

            <dl class="col-links col-links-first">
                <dt>帮助中心</dt>

                <dd><a rel="nofollow" href="//www.mi.com/service/account/register/"   target="_blank">账户管理</a></dd>

                <dd><a rel="nofollow" href="//www.mi.com/service/buy/buytime/"   target="_blank">购物指南</a></dd>

                <dd><a rel="nofollow" href="//www.mi.com/service/order/sendprogress/"   target="_blank">订单操作</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>服务支持</dt>

                <dd><a rel="nofollow" href="//www.mi.com/service/exchange"   target="_blank">售后政策</a></dd>

                <dd><a rel="nofollow" href="http://fuwu.mi.com/"   target="_blank">自助服务</a></dd>

                <dd><a rel="nofollow" href="http://xiazai.mi.com/"   target="_blank">相关下载</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>线下门店</dt>

                <dd><a rel="nofollow" href="//www.mi.com/c/xiaomizhijia/"   target="_blank">小米之家</a></dd>

                <dd><a rel="nofollow" href="//www.mi.com/static/maintainlocation/"   target="_blank">服务网点</a></dd>

                <dd><a rel="nofollow" href="//www.mi.com/static/familyLocation/"   target="_blank">零售网点</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关于小米</dt>

                <dd><a rel="nofollow" href="//www.mi.com/about"   target="_blank">了解小米</a></dd>

                <dd><a rel="nofollow" href="http://hr.xiaomi.com/"   target="_blank">加入小米</a></dd>

                <dd><a rel="nofollow" href="//www.mi.com/about/contact"   target="_blank">联系我们</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关注我们</dt>

                <dd><a rel="nofollow" href="http://weibo.com/xiaomishangcheng"   target="_blank">新浪微博</a></dd>

                <dd><a rel="nofollow" href="http://xiaoqu.qq.com/mobile/share/index.html?url=http%3A%2F%2Fxiaoqu.qq.com%2Fmobile%2Fbarindex.html%3Fwebview%3D1%26type%3D%26source%3Dindex%26_lv%3D25741%26sid%3D%26_wv%3D5123%26_bid%3D128%26%23bid%3D10525%26from%3Dwechat"   target="_blank">小米部落</a></dd>

                <dd><a rel="nofollow" href="#J_modalWeixin" data-toggle="modal" >官方微信</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>特色服务</dt>

                <dd><a rel="nofollow" href="//order.mi.com/queue/f2code"   target="_blank">F 码通道</a></dd>

                <dd><a rel="nofollow" href="//www.mi.com/giftcode/"   target="_blank">礼物码</a></dd>

                <dd><a rel="nofollow" href="//order.mi.com/misc/checkitem"   target="_blank">防伪查询</a></dd>

            </dl>

            <div class="col-contact">
                <p class="phone">400-100-5678</p>
                <p><span class="J_serviceTime-normal" style="
">周一至周日 8:00-18:00</span>
                    <span class="J_serviceTime-holiday" style="display:none;">1月27日至2月2日服务时间 9:00-18:00</span><br>（仅收市话费）</p>
                <a rel="nofollow" class="btn btn-line-primary btn-small" href="//www.mi.com/service/contact" target="_blank"><i class="iconfont">&#xe600;</i> 24小时在线客服</a>            </div>
        </div>
    </div>
</div>
<div class="site-info">
    <div class="container">
        <span class="logo ir">小米官网</span>
        <div class="info-text">
            <p>小米旗下网站：<a href="//www.mi.com/index.html"  target="_blank">小米商城</a><span class="sep">|</span><a href="http://www.miui.com/"  target="_blank">MIUI</a><span class="sep">|</span><a href="http://www.miliao.com/"  target="_blank">米聊</a><span class="sep">|</span><a href="http://www.duokan.com/"  target="_blank">多看书城</a><span class="sep">|</span><a href="http://www.miwifi.com/"  target="_blank">小米路由器</a><span class="sep">|</span><a href="http://call.mi.com/"  target="_blank">视频电话</a><span class="sep">|</span><a href="http://tuan.qiye.mi.com/"  target="_blank">企业团购</a><span class="sep">|</span><a href="http://xiaomi.tmall.com/"  target="_blank">小米天猫店</a><span class="sep">|</span><a href="http://shop115048570.taobao.com"  target="_blank">小米淘宝直营店</a><span class="sep">|</span><a href="http://union.mi.com/"  target="_blank">小米网盟</a><span class="sep">|</span><a href="//www.mi.com/mimobile/"  target="_blank">小米移动</a><span class="sep">|</span><a href="#J_modal-globalSites" data-toggle="modal" target="_blank">Select Region</a>            </p>
            <p>&copy;<a href="//www.mi.com/" target="_blank" title="mi.com">mi.com</a> 京ICP证110507号 <a href="http://www.miitbeian.gov.cn/"  target="_blank" rel="nofollow">京ICP备10046444号</a> <a rel="nofollow"  href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134" target="_blank">京公网安备11010802020134号 </a><a rel="nofollow"  href="//c1.mifile.cn/f/i/2013/cn/jingwangwen.jpg" target="_blank" rel="nofollow">京网文[2014]0059-0009号</a>

                <br> 违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
        </div>
        <div class="info-links">
            <a href="//privacy.truste.com/privacy-seal/validation?rid=4fc28a8c-6822-4980-9c4b-9fdc69b94eb8&lang=zh-cn" target="_blank"><img src="//c1.mifile.cn/f/i/17/site/truste.png" alt="TRUSTe Privacy Certification" /></a>
            <a href="//search.szfw.org/cert/l/CX20120926001783002010" target="_blank"><img src="//s01.mifile.cn/i/v-logo-2.png" alt="诚信网站" /></a>
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e12033011010015771301369&ct=df&pa=461082" target="_blank"><img src="//s01.mifile.cn/i/v-logo-1.png" alt="可信网站" /></a>
            <a href="http://www.315online.com.cn/member/315140007.html" target="_blank"><img src="//s01.mifile.cn/i/v-logo-3.png" alt="网上交易保障中心" /></a>

        </div>
    </div>
    <div class="slogan ir">探索黑科技，小米为发烧而生</div>
</div>

<div id="J_modalWeixin" class="modal fade modal-hide modal-weixin" data-width="480" data-height="520">
    <div class="modal-hd">
        <a class="close" data-dismiss="modal"><i class="iconfont">&#xe602;</i></a>
        <span class="title">小米手机官方微信二维码</span>
    </div>
    <div class="modal-bd">
        <img alt="" src="//c1.mifile.cn/f/i/17/site/site-weixin.png" width="680" height="340" />
    </div>
</div>
<!-- .modal-weixin END -->
<div class="modal modal-hide modal-bigtap-queue" id="J_bigtapQueue">
    <div class="modal-body">
        <span class="close" data-dismiss="modal" aria-hidden="true">退出排队</span>
        <div class="con">
            <div class="title">正在排队，请稍候喔！</div>
            <div class="queue-tip-box">
                <p class="queue-tip">当前人数较多，请您耐心等待，排队期间请不要关闭页面。</p>
                <p class="queue-tip">时常来官网看看，最新产品和活动信息都会在这里发布。</p>
                <p class="queue-tip">下载小米商城 App 玩玩吧！产品开售信息抢先知道。</p>
                <p class="queue-tip">发现了让你眼前一亮的小米产品，别忘了分享给朋友！</p>
                <p class="queue-tip">产品开售前会有预售信息，关注官网首页就不会错过。</p>
            </div>
        </div>

        <div class="queue-posters">
            <div class="poster poster-3"></div>
            <div class="poster poster-2"></div>
            <div class="poster poster-1"></div>
            <div class="poster poster-4"></div>
            <div class="poster poster-5"></div>
        </div>
    </div>
</div>
<!-- .xm-dm-queue END -->
<div id="J_bigtapError" class="modal modal-hide modal-bigtap-error">
    <span class="close" data-dismiss="modal" aria-hidden="true"><i class="iconfont">&#xe602;</i></span>
    <div class="modal-body">
        <h3>抱歉，网络拥堵无法连接服务器</h3>
        <p  class="error-tip">由于访问人数太多导致服务器压力山大，请您稍后再重试。</p>
        <p >
            <a class="btn btn-primary" id="J_bigtapRetry">重试</a>
        </p>
    </div>
</div>


<div id="J_bigtapModeBox" class="modal fade modal-hide modal-bigtap-mode">
    <span class="close" data-dismiss="modal" ><i class="iconfont">&#xe602;</i></span>
    <div class="modal-body">
        <h3 class="title">为防黄牛，请您输入下面的验证码</h3>
        <p class="desc">在防黄牛的路上，我们一直在努力，也知道做的还不够。<br>
            所以，这次劳烦您多输一次验证码，我们一起防黄牛。</p>
        <div class="mode-loading" id="J_bigtapModeLoading">
            <img src="//c1.mifile.cn/f/i/2014/cn/loading.gif" alt="" width="32" height="32">
            <a  id="J_bigtapModeReload" class="reload  hide" href="javascript:void(0);">网络错误，点击重新获取验证码！</a>
        </div>
        <div class="mode-action hide" id="J_bigtapModeAction">
            <div class="mode-con" id="J_bigtapModeContent"></div>
            <input type="text" name="bigtapmode" class="input-text" id="J_bigtapModeInput" placeholder="请输入正确的验证码">
            <p class="tip" id="J_bigtapModeTip"></p>
            <a class="btn  btn-gray" id="J_bigtapModeSubmit">确认</a>
        </div>
    </div>
</div>

<div id="J_bigtapSoldout" class="modal fade modal-hide modal-bigtap-soldout modal-bigtap-soldout-norec">
    <span class="close" data-dismiss="modal" ><i class="iconfont">&#xe602;</i></span>
    <div class="modal-body ">
        <div class="content clearfix">
            <span class="mitu"></span>
            <p class="title">很抱歉，人真是太多了<br>您晚了一步...</p>
        </div>

        <div class="bigtap-recomment-goods" >
            <div class="hd"><span>这些产品也不错，而且有现货哦！</span></div>
            <ul class="clearfix" id="J_bigtapRecommentList"></ul>
        </div>
    </div>
</div>
<!-- .xm-dm-error END -->
<div id="J_modal-globalSites" class="modal fade modal-hide modal-globalSites" data-width="640">
    <div class="modal-hd">
        <a class="close" data-dismiss="modal"><i class="iconfont">&#xe602;</i></a>
        <span class="title">Select Region</span>
    </div>
    <div class="modal-bd">
        <h3>Welcome to Mi.com</h3>
        <p class="modal-globalSites-tips">Please select your country or region</p>
        <p class="modal-globalSites-links clearfix">
            <a href="//www.mi.com/index.html">Mainland China</a>
            <a href="http://www.mi.com/hk/">Hong Kong</a>
            <a href="http://www.mi.com/tw/">Taiwan</a>
            <a href="http://www.mi.com/sg/">Singapore</a>
            <a href="http://www.mi.com/my/">Malaysia</a>
            <a href="http://www.mi.com/ph/">Philippines</a>
            <a href="http://www.mi.com/in/">India</a>
            <a href="http://www.mi.com/id/">Indonesia</a>
            <a href="http://br.mi.com/">Brasil</a>
            <a href="http://www.mi.com/en/">Global Home</a>
            <a href="http://www.mi.com/mena/">MENA</a>
            <a href="http://www.mi.com/pl/">Poland</a>
            <a href="http://www.mi.com/ua/">Ukraine</a>
            <a href="http://www.mi.com/ru/">Russia</a>
        </p>
    </div>
</div>
<!-- .modal-globalSites END -->

<script src="//s01.mifile.cn/js/base.min.js?v2017a13"></script>
<%--<script>
    (function() {
        MI.namespace('GLOBAL_CONFIG');
        MI.GLOBAL_CONFIG = {
            orderSite: 'http://order.mi.com',
            wwwSite: '//www.mi.com',
            cartSite: '//cart.mi.com',
            itemSite: '//item.mi.com',
            assetsSite: '//s01.mifile.cn',
            listSite: '//list.mi.com',
            searchSite: '//search.mi.com',
            mySite: '//my.mi.com',
            damiaoSite: 'https://tp.hd.mi.com/',
            damiaoGoodsId:[],
            logoutUrl: 'http://order.mi.com/site/logout',
            staticSite: '//static.mi.com',
            quickLoginUrl: 'https://account.xiaomi.com/pass/static/login.html'
        };
        MI.setLoginInfo.orderUrl = MI.GLOBAL_CONFIG.orderSite + '/user/order';
        MI.setLoginInfo.logoutUrl = MI.GLOBAL_CONFIG.logoutUrl;
        MI.setLoginInfo.init(MI.GLOBAL_CONFIG);
        MI.miniCart.init();
        //MI.updateMiniCart();
    })();
</script>--%>

<script type="text/javascript" src="//s01.mifile.cn/js/checkout.min.js?v=20170120"></script>

<script>
    var _msq = _msq || [];
    _msq.push(['setDomainId', 100]);
    _msq.push(['trackPageView']);
    (function() {
        var ms = document.createElement('script');
        ms.type = 'text/javascript';
        ms.async = true;
        ms.src = '//c1.mifile.cn/f/i/15/stat/js/xmst.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ms, s);
    })();
    $(function(){
        $("#J_newAddress").click(function(){
            alert("aa");
        });
    });


</script>
</body>
</html>