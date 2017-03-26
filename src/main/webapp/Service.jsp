<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta charset="UTF-8"/>
    <title>小米帮助中心-小米商城</title>
    <link rel="stylesheet" href="css/service/base.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/service/topindex.css"/>
    <!-- .modal-globalSites END -->
    <script src="js/service/base.min.js"></script>
    <script type="text/javascript">var _head_over_time = (new Date()).getTime();</script>
    <script type="text/javascript" src="js/service/serviceIndex.min.js"></script>
    <script src="js/service/xmsg_ti.js"></script>
    <script>
        (function () {
            MI.namespace('GLOBAL_CONFIG');
            MI.GLOBAL_CONFIG = {
                orderSite: '//order.mi.com',
                orderSSLSite: 'https://order.mi.com',
                wwwSite: '//www.mi.com',
                cartSite: '//cart.mi.com',
                itemSite: '//item.mi.com',
                assetsSite: '//s01.mifile.cn',
                listSite: '//list.mi.com',
                searchSite: '//search.mi.com',
                mySite: '//my.mi.com',
                damiaoSite: '//tp.hd.mi.com/',
                damiaoGoodsId: ["2160400006", "2160400007", "2150100003", "2154700014", "2160400010", "2161600033", "2162100004", "2162800010", "1162700001", "2155300001", "2162000035", "2162100006", "2155300002", "2163500025", "2163500026", "2163500027", "2162900014", "2163800008", "2163800007", "2163800006", "2163800005", "2163700032", "2163800009", "1164100014", "2164200021", "2170700003", "2164200006", "2164200004", "2164200002", "2164200001", "2142400036", "1164200001", "2164200011", "2164200007", "2164200048", "2164200047", "2164200046", "2164200043", "2163700017", "2163700011", "2163700013", "2164700002", "2164200008", "2164200012", "2164600009", "2164400025", "2154300011", "2164200044", "2164700025", "2164600001", "2164200045", "2170100014", "2170100013", "2163900015", "2164300011", "2164300012", "2170100012", "2164300013", "2170300017", "2170300018", "2170300019", "2170300020", "2170600013", "2170600014", "2163900010"],
                logoutUrl: '//order.mi.com/site/logout',
                staticSite: '//static.mi.com',
                quickLoginUrl: '#'
            };
            MI.setLoginInfo.orderUrl = MI.GLOBAL_CONFIG.orderSite + '/user/order';
            MI.setLoginInfo.logoutUrl = MI.GLOBAL_CONFIG.logoutUrl;
            MI.setLoginInfo.init(MI.GLOBAL_CONFIG);
            MI.miniCart.init();
            MI.updateMiniCart();
        })();
    </script>
    <script>
        var _msq = _msq || [];
        _msq.push(['setDomainId', 100]);
        _msq.push(['trackPageView']);
        (function () {
            var ms = document.createElement('script');
            ms.type = 'text/javascript';
            ms.async = true;
            ms.src = 'js/service/xmst.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ms, s);
        })();
    </script>
</head>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<div class="service-index xm-service-box">
    <!-- 服务支持面包屑 -->
    <div class="container">
        <div class="breadcrumbs">
            <a href="index">首页</a>
            <span class="sep">/</span>
            <a href="#">帮助中心</a>
        </div>
    </div>
    <div class="container">
        <div class="service-index-header" id="J_sliderIndex">
            <a class="slider" href="#" target="_blank">
                <img src="img/service/slider02.jpg"/>
            </a><%--
            <a class="slider" href="#" target="_blank">
                <img src="img/service/slider03.jpg"/>
            </a>--%>

        </div>;
        <!-- 自助服务 -->
        <div class="service-index-fquestion">
            <h2>自助服务</h2>
            <div class="fquestion clearfix">
                <div class="content">
                    <div class="row">
                        <ul>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-shouhoufuwu.png" alt="申请售后服务">
                                    <span>申请售后服务</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-dingdan.png" alt="订单查询">
                                    <span>订单查询</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-xmaccount.png" alt="小米账户">
                                    <span>小米账户</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/cms_14848055371818_noYuR.jpg" alt="售后县级受理点">
                                    <span>售后县级受理点</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-wangdian.png" alt="授权服务网点">
                                    <span>授权服务网点</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-anzhuang.png" alt="安装服务">
                                    <span>安装服务</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-shouhouzc.png" alt="售后政策">
                                    <span>售后政策</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <img src="img/service/service-icon-chaxun.png" alt="查询真伪">
                                    <span>查询真伪</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- 产品支持 -->
        <div class="service-index-goods">
            <h2>产品支持</h2>
            <div class="content">
                <ul class="service-index-goodslist clearfix">
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14670157357414_putWy.jpg">
                            </div>

                            <span>小米手机</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14670157674386_XOJhN.jpg">
                            </div>

                            <span>红米手机</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14670157981363_IFLNh.jpg">
                            </div>

                            <span>小米平板</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14670157878726_pNeqZ.jpg">
                            </div>

                            <span>智能硬件</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14670147822275_kgiNB.jpg">
                            </div>

                            <span>小米电视</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14670147949246_EyuXz.jpg">
                            </div>

                            <span>小米盒子</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_1467014811346_KQdOm.jpg">
                            </div>

                            <span>小米路由器</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <div>
                                <img src="img/service/placeholder-220!110x110.png"
                                     data-src="img/service/cms_14696085838228_nXTxc.jpg">
                            </div>

                            <span>小米笔记本</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 常见问题 -->
        <div class="service-index-needHelp">
            <h2>常见问题</h2>
            <div class="content">
                <div class="needhelp clearfix">
                    <dl>
                        <dt>账户管理</dt>
                        <dd><a href="#" target="_blank"> 账户注册</a></dd>
                        <dd><a href="#" target="_blank"> 找回密码</a></dd>
                        <dd><a href="#" target="_blank"> VIP认证</a></dd>
                        <dd><a href="#" class="hot"
                               target="_blank"> 人工审核</a></dd>

                    </dl>
                    <dl>
                        <dt>购物指南</dt>
                        <dd><a href="#" target="_blank"> 购买时间</a></dd>
                        <dd><a href="#" target="_blank"> 产品参数</a></dd>
                        <dd><a href="#" target="_blank"> 包邮政策</a></dd>
                        <dd><a href="#" target="_blank"> 下单及支付时效</a></dd>
                        <dd><a href="#" target="_blank"> 发货时效</a></dd>
                        <dd><a href="#" target="_blank"> 物流及配送</a></dd>
                        <dd><a href="#" target="_blank"> 支付方式</a></dd>

                    </dl>
                    <dl>
                        <dt>订单操作</dt>
                        <dd><a href="#" target="_blank"> 查询发货进度</a></dd>
                        <dd><a href="#" target="_blank"> 修改订单信息</a></dd>
                        <dd><a href="#" target="_blank"> 取消订单</a></dd>
                        <dd><a href="#" target="_blank"> 查询物流信息</a></dd>
                        <dd><a href="#" target="_blank"> 查询订单信息</a></dd>
                        <dd><a href="#" target="_blank"> 订单拆分与合并</a></dd>
                        <dd><a href="#" target="_blank"> 优惠券查询</a></dd>

                    </dl>
                    <dl>
                        <dt>技术支持</dt>
                        <dd><a href="#" class="hot" target="_blank"> 如何刷机</a></dd>
                        <dd><a href="#" target="_blank"> 无法开机</a></dd>
                        <dd><a href="#" target="_blank"> 无法解锁</a></dd>
                        <dd><a href="#" target="_blank">
                            屏幕失灵</a></dd>
                        <dd><a href="#" target="_blank">
                            手机耗电</a></dd>
                        <dd><a href="#"
                               target="_blank"> 手机自动关机、重启</a></dd>
                        <dd><a href="#" class="hot" target="_blank">
                            BL锁解锁失败必看</a></dd>

                    </dl>
                    <dl>
                        <dt>售后服务</dt>
                        <dd><a href="#" class="hot" target="_blank"> 售后申请</a></dd>
                        <dd><a href="#" target="_blank"> 售后进度查询</a></dd>
                        <dd><a href="#" class="hot" target="_blank"> 快递费报销</a>
                        </dd>
                        <dd><a href="#" target="_blank"> 发票修改咨询</a></dd>
                        <dd><a href="#" target="_blank"> 返厂邮寄注意事项</a></dd>
                        <dd><a href="#" target="_blank"> 维修网点信息</a></dd>

                    </dl>
                    <dl>
                        <dt>特色服务</dt>
                        <dd><a href="#" target="_blank"> 挂架安装</a></dd>
                        <dd><a href="#" target="_blank"> 以旧换新</a></dd>
                        <dd><a href="#" target="_blank"> 意外保障服务</a></dd>
                        <dd><a href="#" target="_blank"> 信用卡分期付款</a>
                        </dd>
                        <dd><a href="#" target="_blank"> 小米云服务</a></dd>
                        <dd><a href="#" target="_blank"> 建议留言</a></dd>
                        <dd><a href="#" target="_blank"> 举报假小米</a></dd>
                        <dd><a href="#" class="hot"
                               target="_blank"> 小米漫游</a></dd>

                    </dl>
                    <dl>
                        <dt>其他产品咨询</dt>
                        <dd><a href="#" target="_blank"> 虚拟运营商</a></dd>
                        <dd><a href="#" target="_blank"> 电话加油包</a></dd>
                        <dd><a href="#" target="_blank"> 小米金融</a></dd>
                        <dd><a href="#" target="_blank"> 小米支付</a>
                        </dd>

                    </dl>
                    <dl>
                        <dt>实体店服务</dt>
                        <dd><a href="#" target="_blank"> 到店1小时快修服务</a>
                        </dd>
                        <dd><a href="#" class="hot"
                               target="_blank"> 小米线下专区</a></dd>
                        <dd><a href="#" class="hot"
                               target="_blank"> 查询县级受理点</a></dd>
                        <dd><a href="#" class="hot" target="_blank"> 身边的小米之家</a>
                        </dd>

                    </dl>

                </div>
            </div>
        </div>
        <!-- 联系客服 -->
        <h2>联系客服</h2>
        <div class="content">
            <div class="contact">
                <div class="bd clearfix">
                    <dl class="o">
                        <i class="icon-contact icon-contact01"></i>
                        <dt class="J_serviceTime-normal">7×24在线服务</dt>
                        <dt class="J_serviceTime-holiday" style="display: none;">在线服务</dt>
                        <dd>在线对话，为您解决遇到的问题</dd>
                        <dd class="J_serviceTime-normal serviceTime-normal-spe">周一至周日 全天服务</dd>
                        <dd class="J_serviceTime-holiday" style="display: none;">1月27日至2月2日服务时间 9:00-18:00</dd>
                        <input type="button" class="btn btn-primary" data-toggle="modal" data-target="#onlinePop"
                               value="立即咨询">
                    </dl>
                    <dl class="t">
                        <i class="icon-contact icon-contact02"></i>
                        <dt>400-100-5678</dt>
                        <dd class="J_serviceTime-normal">周一至周日 8:00 至 18:00</dd>
                        <dd class="J_serviceTime-holiday" style="display:none;">1月27日至2月2日服务时间 9:00-18:00</dd>
                        <dd>仅收市话费</dd>
                    </dl>
                </div>
                <div class="weixin"></div>
            </div>
        </div>

        <div class="modal faq-pop fade online-pop modal-hide" aria-hidden="false" id="onlinePop">
            <div class="modal-header">
                <span class="close" data-dismiss="modal"><i class="iconfont icon-24">&#xe602;</i> </span>
                <h3>本周热门咨询</h3>
            </div>
            <div class="modal-body">
                <div class="online-tab">
                    <ul class="clearfix">
                        <li class="on">购买</li>
                        <li>系统</li>
                        <li>使用</li>
                        <li>刷机</li>
                        <li>售后</li>
                    </ul>
                </div>
                <div class="online-con">

                    <ol class="item">
                        <li>
                            <a data-stat-aid="挑战初音未来赢手机" data-stat-pid="购买_0"
                               href="#" target="_blank">
                                <span>1</span>
                                <strong>挑战初音未来赢手机</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="把美好的都送给爱的人" data-stat-pid="购买_1"
                               href="#" target="_blank">
                                <span>2</span>
                                <strong>把美好的都送给爱的人</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="高性能轻薄笔记本，赶快来买吧" data-stat-pid="购买_2"
                               href="#" target="_blank">
                                <span>3</span>
                                <strong>高性能轻薄笔记本，赶快来买吧</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="我购买的东西什么时候发货？" data-stat-pid="购买_3" href="#"
                               target="_blank">
                                <span>4</span>
                                <strong>我购买的东西什么时候发货？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米网在线支付常见问题" data-stat-pid="购买_4" href="#"
                               target="_blank">
                                <span>5</span>
                                <strong>小米网在线支付常见问题</strong>
                            </a>
                        </li>
                    </ol>
                    <ol class="item hide">
                        <li>
                            <a data-stat-aid="升级MIUI8开发版相关问题" data-stat-pid="系统_0"
                               href="#" target="_blank">
                                <span>1</span>
                                <strong>升级MIUI8开发版相关问题</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米MIX常见故障排查" data-stat-pid="系统_1"
                               href="#" target="_blank">
                                <span>2</span>
                                <strong>小米MIX常见故障排查</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米手机5出问题了怎么办？" data-stat-pid="系统_2"
                               href="#" target="_blank">
                                <span>3</span>
                                <strong>小米手机5出问题了怎么办？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="红米系列手机故障排除方法" data-stat-pid="系统_3"
                               href="#" target="_blank">
                                <span>4</span>
                                <strong>红米系列手机故障排除方法</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米手机如何下载应用" data-stat-pid="系统_4" href="#"
                               target="_blank">
                                <span>5</span>
                                <strong>小米手机如何下载应用</strong>
                            </a>
                        </li>
                    </ol>
                    <ol class="item hide">
                        <li>
                            <a data-stat-aid="小米手机无法开机，要如何解决？" data-stat-pid="使用_0"
                               href="#" target="_blank">
                                <span>1</span>
                                <strong>小米手机无法开机，要如何解决？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="手机无法解锁怎么办？" data-stat-pid="使用_1"
                               href="#" target="_blank">
                                <span>2</span>
                                <strong>手机无法解锁怎么办？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米手机无法充电怎么办？" data-stat-pid="使用_2" href="#"
                               target="_blank">
                                <span>3</span>
                                <strong>小米手机无法充电怎么办？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="手机屏幕失灵了怎么办？" data-stat-pid="使用_3" href="#"
                               target="_blank">
                                <span>4</span>
                                <strong>手机屏幕失灵了怎么办？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米盒子连接电视之后没有声音怎么办？" data-stat-pid="使用_4"
                               href="#" target="_blank">
                                <span>5</span>
                                <strong>小米盒子连接电视之后没有声音怎么办？</strong>
                            </a>
                        </li>
                    </ol>
                    <ol class="item hide">
                        <li>
                            <a data-stat-aid="刷机包在哪里下载？" data-stat-pid="刷机_0" href="#"
                               target="_blank">
                                <span>1</span>
                                <strong>刷机包在哪里下载？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="自助刷机教程" data-stat-pid="刷机_1" href="#"
                               target="_blank">
                                <span>2</span>
                                <strong>自助刷机教程</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="小米助手下载" data-stat-pid="刷机_2" href="#"
                               target="_blank">
                                <span>3</span>
                                <strong>小米助手下载</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="如何OTA升级？" data-stat-pid="刷机_3" href="#"
                               target="_blank">
                                <span>4</span>
                                <strong>如何OTA升级？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="如何通过小米手机助手更新系统？" data-stat-pid="刷机_4"
                               href="http://bbs.xiaomi.cn/t-11612720" target="_blank">
                                <span>5</span>
                                <strong>如何通过小米手机助手更新系统？</strong>
                            </a>
                        </li>
                    </ol>
                    <ol class="item hide">
                        <li>
                            <a data-stat-aid="维修网点信息查询" data-stat-pid="售后_0" href="#"
                               target="_blank">
                                <span>1</span>
                                <strong style="color:red;">维修网点信息查询</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="如何在小米网申请售后？" data-stat-pid="售后_1"
                               href="#" target="_blank">
                                <span>2</span>
                                <strong>如何在小米网申请售后？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="如何在小米网申请快递费报销？" data-stat-pid="售后_2"
                               href="#" target="_blank">
                                <span>3</span>
                                <strong>如何在小米网申请快递费报销？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="什么情况下可退换货？时长是多久？" data-stat-pid="售后_3"
                               href="#" target="_blank">
                                <span>4</span>
                                <strong>什么情况下可退换货？时长是多久？</strong>
                            </a>
                        </li>
                        <li>
                            <a data-stat-aid="我申请了售后服务，何时联系我？" data-stat-pid="售后_4"
                               href="#" target="_blank">
                                <span>5</span>
                                <strong>我申请了售后服务，何时联系我？</strong>
                            </a>
                        </li>
                    </ol>
                </div>

                <!--   //米聊全技能组-->
                <div class="btn btn-primary show-online-btn" id="showOnlineBtn">没有您关注的问题？立即咨询在线客服</div>
            </div>
        </div>
    </div>
</div>

<div class="site-footer">
    <div class="container">
        <div class="footer-service">
            <ul class="list-service clearfix">
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">&#xe634;</i>预约维修服务</a>
                </li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">
                    &#xe635;</i>7天无理由退货</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">
                    &#xe636;</i>15天免费换货</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">
                    &#xe638;</i>满150元包邮</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">
                    &#xe637;</i>520余家售后网点</a></li>
            </ul>
        </div>
        <div class="footer-links clearfix">

            <dl class="col-links col-links-first">
                <dt>帮助中心</dt>

                <dd><a rel="nofollow" href="#" target="_blank">账户管理</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">购物指南</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">订单操作</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>服务支持</dt>

                <dd><a rel="nofollow" href="#" target="_blank">售后政策</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">自助服务</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">相关下载</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>线下门店</dt>

                <dd><a rel="nofollow" href="#" target="_blank">小米之家</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">服务网点</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">零售网点</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关于小米</dt>

                <dd><a rel="nofollow" href="#" target="_blank">了解小米</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">加入小米</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">联系我们</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关注我们</dt>

                <dd><a rel="nofollow" href="#" target="_blank">新浪微博</a></dd>

                <dd><a rel="nofollow"
                       href="#"
                       target="_blank">小米部落</a></dd>

                <dd><a rel="nofollow" href="#J_modalWeixin" data-toggle="modal">官方微信</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>特色服务</dt>

                <dd><a rel="nofollow" href="#" target="_blank">F 码通道</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">礼物码</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">防伪查询</a></dd>

            </dl>

            <div class="col-contact">
                <p class="phone">400-100-5678</p>
                <p><span class="J_serviceTime-normal" style="
">周一至周日 8:00-18:00</span>
                    <span class="J_serviceTime-holiday" style="display:none;">1月27日至2月2日服务时间 9:00-18:00</span><br>（仅收市话费）
                </p>
                <a rel="nofollow" class="btn btn-line-primary btn-small" href="#"
                   target="_blank"><i class="iconfont">&#xe600;</i> 24小时在线客服</a></div>
        </div>
    </div>
</div>
<div class="site-info">
    <div class="container">
        <div class="logo ir">小米官网</div>
        <div class="info-text">
            <p class="sites"><a rel="nofollow" href="#" target="_blank">小米商城</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">MIUI</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">米聊</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">多看书城</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">小米路由器</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">视频电话</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">小米后院</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">小米天猫店</a><span class="sep">|</span><a
                    rel="nofollow" href="#" target="_blank">小米淘宝直营店</a><span
                    class="sep">|</span><a rel="nofollow" href="#" target="_blank">小米网盟</a><span
                    class="sep">|</span><a rel="nofollow" href="#" target="_blank">小米移动</a><span
                    class="sep">|</span><a rel="nofollow" href="#s" data-toggle="modal">Select
                Region</a></p>
            <p>&copy;<a href="//www.mi.com/" target="_blank" title="mi.com">mi.com</a> 京ICP证110507号 <a
                    href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">京ICP备10046444号</a> <a
                    rel="nofollow" href="#"
                    target="_blank">京公网安备11010802020134号 </a><a rel="nofollow"
                                                                href="#"
                                                                target="_blank" rel="nofollow">京网文[2014]0059-0009号</a>

                <br> 违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
        </div>
        <div class="info-links">
            <a rel="nofollow"
               href="#"
               target="_blank"><img rel="nofollow" src="img/service/truste.png" alt="TRUSTe Privacy Certification"/></a>
            <a rel="nofollow" href="#" target="_blank"><img rel="nofollow"
                                                                                                          src="img/service/v-logo-2.png"
                                                                                                          alt="诚信网站"/></a>
            <a rel="nofollow" href="#"
               target="_blank"><img rel="nofollow" src="img/service/v-logo-1.png" alt="可信网站"/></a>
            <a rel="nofollow" href="#" target="_blank"><img
                    rel="nofollow" src="//s01.mifile.cn/i/v-logo-3.png" alt="网上交易保障中心"/></a>
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
        <img alt="" src="img/service/site-weixin.png" width="680" height="340"/>
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
        <p class="error-tip">由于访问人数太多导致服务器压力山大，请您稍后再重试。</p>
        <p>
            <a class="btn btn-primary" id="J_bigtapRetry">重试</a>
        </p>
    </div>
</div>


<div id="J_bigtapModeBox" class="modal fade modal-hide modal-bigtap-mode">
    <span class="close" data-dismiss="modal"><i class="iconfont">&#xe602;</i></span>
    <div class="modal-body">
        <h3 class="title">为防黄牛，请您输入下面的验证码</h3>
        <p class="desc">在防黄牛的路上，我们一直在努力，也知道做的还不够。<br>
            所以，这次劳烦您多输一次验证码，我们一起防黄牛。</p>
        <div class="mode-loading" id="J_bigtapModeLoading">
            <img src="img/service/loading.gif" alt="" width="32" height="32">
            <a id="J_bigtapModeReload" class="reload  hide" href="javascript:void(0);">网络错误，点击重新获取验证码！</a>
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
    <span class="close" data-dismiss="modal"><i class="iconfont">&#xe602;</i></span>
    <div class="modal-body ">
        <div class="content clearfix">
            <span class="mitu"></span>
            <p class="title">很抱歉，人真是太多了<br>您晚了一步...</p>
        </div>

        <div class="bigtap-recomment-goods">
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
            <a href="http://www.mi.com/mena/"> MENA</a>
        </p>
    </div>
</div>
</body>
</html>