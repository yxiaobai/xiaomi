<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>小米官网--首页</title>
    <%--<jsp:include page="header.jsp"/>--%>
    <link rel="stylesheet" href="css/index/common.css">
    <link rel="stylesheet" href="css/index/index.css">
    <c:if test="${goodsAll == null}">
        <c:redirect url="http://localhost:8080/index"/>
    </c:if>
</head>
<body>


<!--headerTop-->
<jsp:include page="Top.jsp"/>
<!--category slider-->
<div class="container">
    <div class="slider ">
        <ul class="slider-main">
                <c:forEach items="${carousel}" var="carousel">
                    <li><a href="details?goodsID=${carousel.url}"><img src="img/carousel/${carousel.img}"></a></li>
                </c:forEach>
        </ul>
        <ul class="index">
            <c:forEach items="${carousel}" var="carousel">
                <li class="active"></li>
            </c:forEach>
        </ul>
        <a class="btn pre" href="javascript:"></a>
        <a class="btn next" href="javascript:"></a>
        <div class="category">
            <ul id="categoryList" class="category-list clear">
                <li class="category-item">
                    <a class="title" href="javascript:">手机 电话卡<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col-2" style="display: none;">
                        <%--小米--%>
                        <ul class="children-list children-list-col children-list-col-1">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 1 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="star-goods">
                                        <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                         <%--红米--%>
                        <ul class="children-list children-list-col ">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 2 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="star-goods">
                                        <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">笔记本 平板<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col" style="display: none;">
                        <%--笔记本 平板--%>
                        <ul class="children-list children-list-col">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 3 || goods.c_ID == 4 && a<8}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">电视盒子<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col-3" style="display: none;">
                        <%--电视--%>
                        <ul class="children-list children-list-col children-list-col-1">

                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 5 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                        <%--盒子--%>
                        <ul class="children-list children-list-col children-list-col-2">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 6 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                        <ul class="children-list children-list-col children-list-col-3">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${ goods.c_ID == 6 && a<4}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">路由器 智能硬件<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col-2" style="display: none;">
                        <%--路由器--%>
                        <ul class="children-list children-list-col children-list-col-1">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 7 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="star-goods">
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                            <%--智能硬件--%>
                            <c:set var="a" value="1"></c:set>
                        <ul class="children-list children-list-col ">
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 8 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="star-goods">
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="javascript:">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">移动电源 电源 插线板<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col" style="display: none;">
                        <%--移动电源--%>
                        <ul class="children-list children-list-col">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 9 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">耳机 音响<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col-2" style="display: none;">
                        <ul class="children-list children-list-col children-list-col-1">
                            <%--耳机 音响--%>
                                <c:set var="a" value="1"></c:set>
                                <c:forEach items="${goodsAll}" var="goods">
                                    <c:if test="${goods.c_ID == 10 && a<7}">
                                        <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>

                        <ul class="children-list children-list-col children-list-col-2">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 11  && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">保护套贴膜<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col-1" style="display: none;">
                        <%--保护套贴膜--%>
                        <ul class="children-list children-list-col children-list-col-1">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 13 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="star-goods">
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>

                    </div>
                </li>
                <li class="category-item">
                    <a class="title" href="javascript:">线材 支架 储存卡<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col" style="display: none;">
                        <ul class="children-list children-list-col">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 14 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>

                <li class="category-item">
                    <a class="title" href="javascript:">米兔 周边生活<span class="iconfont">&#xe63f;</span></a>
                    <div class="children clear children-col" style="display: none;">
                        <ul class="children-list children-list-col">
                            <c:set var="a" value="1"></c:set>
                            <c:forEach items="${goodsAll}" var="goods">
                                <c:if test="${goods.c_ID == 15 && a<7}">
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li>
                                         <a class="link" href="details?goodsID=${goods.goodsID}">
                                            <img class="thumb" src="img/goodsInfo/${goods.goodsImg}" width="40" height="40" alt="">
                                            <span class="text">${goods.goodsName}</span></a>
                                        <a class="btn  btn-buy" href="addShoppingCar?goodsID=${goods.goodsID}">选购</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="home-nav clear ">
        <div class="home-channel-list clear fl">
            <ul class="clear">
                <li class="top left"> <a class="thumb" href="details?goodsID=300"><i class="iconfont">&#xe601;</i>选购手机</a></li>
                <li class="top"> <a class="thumb" href="details?goodsID=310"><i class="iconfont">&#xe659;</i>企业团购</a></li>
                <li class="top"> <a class="thumb" href="details?goodsID=301"><i class="iconfont">&#xe60b;</i>官翻产品</a></li>
                <li class="left"> <a class="thumb" href="details?goodsID=302"><i class="iconfont">&#xe60c;</i>小米移动</a></li>
                <li class=""> <a class="thumb" href="details?goodsID=303"><i class="iconfont">&#xe636;</i>以旧换新</a></li>
                <li class=""> <a class="thumb" href="details?goodsID=304"><i class="iconfont">&#xe62b;</i>话费充值 </a></li>
            </ul>
        </div>
        <%--3个广告栏--%>
        <div class="home-promo-list fr">
            <ul class="clear">
                <li class="fl"> <a href="details?goodsID=305"><img src="img/index/xmad_14889671966374_sVbtO.jpg" alt=""></a></li>
                <li class="fl"> <a href="details?goodsID=307"><img src="img/index/xmad_14897196222929_uqAcF.webp.jpg" alt=""></a></li>
                <li class="fl"> <a href="details?goodsID=337"><img src="img/index/xmad_14897153210247_CKRXP.webp.jpg" alt=""></a></li>
            </ul>
        </div>
    </div>
</div>
<!--小米明星单品-->
<div class="container">
    <div class="start-product">
        <div class="box-hd">
            <h2 class="title">小米明星产品</h2>
            <div class="arrow">
                <a class=" arrow-r" href="javascript:"><i class="iconfont">&#xe649;</i></a>
                <a class="arrow-l" href="javascript:"><i class="iconfont">&#xe63f;</i></a>
            </div>
        </div>
        <c:set var="a" value="0"></c:set>
        <div class="xm-carousel-wrapper" style="height: 340px; overflow:hidden;">
            <ul class="main-banner" style="left:0">
                <c:forEach items="${starAll}" var="goods"  begin="0" end="5">
                    <li class="rainbow-item-${a+1}">
                        <c:set var="a" value="${a+1}"></c:set>
                        <a class="thumb" href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="${goods.goodsName}">
                        </a>
                        <h3> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                        <p class="desc">${goods.goodsIntroduce}</p>
                        <p class="price">${goods.marketPrice}元起</p>
                    </li>
                </c:forEach>
            </ul>


            <ul class="main-banner">
                <c:forEach items="${starAll}" var="goods"  begin="5" end="10">
                    <li class="rainbow-item-${a+1}">
                        <c:set var="a" value="${a+1}"></c:set>
                        <a class="thumb" href="details?goodsID=${goods.goodsID}">
                            <img src="img/goodsInfo/${goods.goodsImg}" alt="${goods.goodsName}">
                        </a>
                        <h3> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                        <p class="desc">${goods.goodsIntroduce}</p>
                        <p class="price">${goods.marketPrice}元起</p>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<!--main-home-->
<div class="main-home">
    <div class="container ">
        <!--智能硬件-->
        <div class="home-brick-row-box home-brick-box">
            <div class="box-hd">
                <h2 class="title">智能硬件</h2>
                <div class="more ">
                    <a class="more-link" href="javascript:">
                        查看全部
                        <i class="iconfont rt">&#xe63f;</i>
                    </a>
                </div>
            </div>
            <div class="box-wrapper">
                <div class="box-lf">
                    <ul>
                        <li>
                            <a class="link" href="details?goodsID=393">
                                <img src="img/index/57c2f4fb-6743-44c6-b447-6bd55aaeef89.jpg" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="box-rt">
                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:if test="${goods.c_ID == 8 && a<9}">
                                <c:set var="a" value="${a+1}"></c:set>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                    <p class="desc">${goods.goodsIntroduce}</p>
                                    <p class="price">${goods.marketPrice}元</p>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <!--搭配-->
        <div class="home-brick-row-box home-brick-box-1">
            <div class="box-hd">
                <h2 class="title">搭配</h2>
                <div class="more ">
                    <ul id="dp" class="tab-list">
                        <li class="tab-active">热门</li>
                        <li>耳机音箱</li>
                        <li>电源</li>
                        <li>电池存储卡</li>
                    </ul>
                </div>
            </div>
            <div class="box-wrapper">
                <div class="box-lf">
                    <ul class="box-well">
                        <li>
                            <a class="link" href="details?goodsID=374">
                                <img src="img/index/0ff2c84c-d0e6-4232-b0fb-2cebefd1a207.webp.jpg" alt="">
                            </a>
                        </li>
                        <li class="">
                            <a class="link" href="details?goodsID=375">
                                <img src="img/index/363032e6-b043-4854-a8cc-8909df918f02.webp.jpg" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="box-rt box-rt-1">
                    <%--热门--%>
                    <ul class="clear" style="display: block">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                               <%-- <c:when test="${goods.c_ID == 10 || goods.c_ID == 12 && goods.isNew ==1 && a<3 }">&lt;%&ndash;是否是新品&ndash;%&gt;

                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>--%>
                                <c:when test="${goods.c_ID == 10 ||goods.c_ID == 12 && discount ==1 && a<3}"><%--优惠商品--%>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                             <%--   <c:when test="${goods.c_ID == 10 || goods.c_ID == 11||goods.c_ID == 12 && a<2 }">  &lt;%&ndash;普通的&ndash;%&gt;

                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>--%>
                            </c:choose>
                            <c:set var="a" value="${a+1}"></c:set>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=348">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 热门</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <%--耳机音响--%>
                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 10 || goods.c_ID == 11 && goods.isNew ==0 &&  a<8  }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 10 || goods.c_ID == 11 && discount ==1 &&  a<8}"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 10 || goods.c_ID == 11 &&  a<8}">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>

                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=333">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 耳机音响</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <%--电源--%>
                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 9 && goods.isNew ==0 && a<8 }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 9 && discount ==1 &&  a<8}"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 9 &&  a<8}">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=348">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 电源</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <%--存储卡--%>
                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 13 && goods.isNew ==0 && a<8 }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 13 && discount ==1 &&  a<8}"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 13 &&  a<8}">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=333">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 保护套</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--配件-->
        <div class="home-brick-row-box home-brick-box-1">
            <div class="box-hd">
                <h2 class="title">配件</h2>
                <div class="more ">
                    <ul id="pj" class="tab-list">
                        <li class="tab-active">生活周边</li>
                        <li>保护套</li>
                        <li>贴膜</li>
                        <li>其他配件</li>
                    </ul>
                </div>
            </div>
            <div class="box-wrapper">
                <div class="box-lf">
                    <ul class="box-well">
                        <li>
                            <a class="link" href="details?goodsID=374">
                                <img src="img/index/0ff2c84c-d0e6-4232-b0fb-2cebefd1a207.webp.jpg" alt="">
                            </a>
                        </li>
                        <li class="">
                            <a class="link" href="details?goodsID=375">
                                <img src="img/index/363032e6-b043-4854-a8cc-8909df918f02.webp.jpg" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="box-rt box-rt-2">
                    <ul class="clear" style="display: block">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 5  ||  goods.isNew ==0 && a<8 }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 5  || discount ==1 && a<8}"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 5  || goods.c_ID == 9 && a<8}">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=348">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 热门</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 13 && goods.isNew ==0 && a<8 }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 13 && discount ==1 && a<8}"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 13 && a<8}">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=333">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 耳机音响</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 14 && goods.isNew ==0 && a<8 }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 14 && discount ==1 && a<8}"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 14 && a<8}">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=348">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 热门</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="clear">
                        <c:set var="a" value="1"></c:set>
                        <c:forEach items="${goodsAll}" var="goods">
                            <c:choose>
                                <c:when test="${goods.c_ID == 6 && goods.isNew ==0 && a<8 }"><%--是否是新品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                        <div class="flag flag-new">新品</div>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">小米的品质还是非常有保证的，东西是物美价廉，如果要是...</span>
                                                <span class="author">来自于 携手 的评价</span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 6 && discount ==1 && a<8 }"><%--优惠商品--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc"></p>
                                        <p class="price">${goods.marketPrice}元<%--打折前的价格--%>
                                            <del><span class="num">${goods.marketPrice}</span>元</del><%--打折后的价格--%>
                                        </p>
                                        <div class="flag flag-saleoff">享9折</div><%--享受的优惠--%>
                                        <div class="review-wrapper">
                                             <a class="thumb" href="details?goodsID=${goods.goodsID}">
                                                <span class="review">
                                                    小米的品质还是非常有保证的，东西是物美价廉，如果要是...
                                                </span>
                                                <span class="author">
                                                    来自于 携手 的评价
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </c:when>
                                <c:when test="${goods.c_ID == 6 || goods.c_ID == 7 && a<8 }">  <%--普通的--%>
                                    <c:set var="a" value="${a+1}"></c:set>
                                    <li class="box-pro">
                                         <a class="thumb" href="details?goodsID=${goods.goodsID}"><img src="img/goodsInfo/${goods.goodsImg}" alt=""></a>
                                        <h3 class="title"> <a class="thumb" href="details?goodsID=${goods.goodsID}">${goods.goodsName}</a></h3>
                                        <p class="desc">${goods.goodsIntroduce}</p>
                                        <p class="price">${goods.marketPrice}元</p>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <ul class="box-hot">
                                <li class="box-pro">
                                    <a class="thumb" href="details?goodsID=348">
                                        <img src="img/index/20170315101039189.jpg" alt="1MORE三单元圈铁耳机">
                                    </a>
                                    <h3 class="title"> <a class="thumb" href="details?goodsID=348">1MORE三单元圈铁耳机</a></h3>
                                    <p class="Price">49元</p>
                                </li>
                                <li class="box-pro">
                                     <a class="thumb" href="details?goodsID=329">
                                        <div class="more fl">
                                            浏览更多
                                            <small> 耳机音响</small>
                                        </div>
                                        <i class="rt fr"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!--footer-->
<jsp:include page="footer.jsp"/>
</body>
</html>