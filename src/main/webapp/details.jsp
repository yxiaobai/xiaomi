<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>小米商城</title>
    <%--<link rel="stylesheet" href="css/service/footer.css"/>--%>
</head>
<body>
<%--<div class="t">
    <div class="show">
        <a href="index.jsp"><img src="images/logo-footer.png"></a>
        <ul class="u">
            <li><a href="#">登陆</a></li>
            <li><a>丨</a></li>
            <li><a href="#">注册</a></li>
        </ul>
    </div>
    <div class="x"></div>
</div>--%>
<jsp:include page="Top.jsp"></jsp:include>
<div class="type">
   <%-- <ul>
        <c:forEach items="${lx}" var="l">
            <li>${l}</li>
            &lt;%&ndash;<li>1</li>
            <li>1</li>
            <li>1</li>
            <li>1</li>&ndash;%&gt;
        </c:forEach>
    </ul>--%>
</div>
<div class="tab clear">
    <div class="bd">
            <img src="images/${moImg}" style="display: block; width: 500px;height: 500px; ">
        <c:forEach items="${img}" var="w">
            <img src="images/${w}">
            <%--<img src="images/xiaomi5splus-jinse!600x600.jpg" style="display: block">
            <img src="images/xiaomi5splus-meiguijin!600x600.jpg" style="display: block">
            <img src="images/xiaomi5splus-yinse!600x600.jpg" style="display: block">--%>
            <%--<img src="images/xiaomi5splus-heise!600x600.jpg">--%>
        </c:forEach>
    </div>

    <div class="hd">
        <h1>
            <c:forEach items="${lx}" var="c" >
                <li>${c}</li>
            </c:forEach>
            <div class="ss">
                <span class="h1_sp" style="display: block"></span>
                <span class="h1_sp"></span>
            </div>
        </h1>

        <div class="hd_top clear">
            <p>1.选择版本</p>
            <ul class="ht">
                <c:forEach items="${edition}" var="a" >
                    <li>${a}</li>
                </c:forEach>
            </ul>
        </div>

        <ul class="clear hs" >
            <p>2.选择颜色</p>
            <li style="display: none"><a href=""></a></li>
            <c:forEach items="${color}" var="c">
                <li>${c}</li>
                <%--<li><a href="">金色</a></li>
                 <li><a href="">玫瑰金</a></li>
                 <li><a href="">银白</a></li>--%>
            </c:forEach>
        </ul>

        <div class="hd_top clear">
            <p>3.优惠</p>
            <ul class="hts">
                <li>套餐一</li>
                <li>套餐二</li>
            </ul>
        </div>
        <a href="addShoppingCar?goodsID=${param.goodsID}"><div style="width: 180px; height:50px; background: #ff6700;
    border-color: #ff6700;color: #fff; text-align: center;line-height: 50px; font-size: 15px">购买</div></a>
    </div>
</div>
<div class="footer">
    <center>
        <img src="images/dc2.jpg">
        <img src="images/dc1.jpg">
    </center>
</div>
<jsp:include page="footer.jsp"></jsp:include>

<script>
    var pars = document.getElementsByClassName('tab')
    var pars_len = pars.length
    for(k=0;k<pars_len;k++){
        show( pars[k])
    }
    function show(obj){
        var hd=obj.getElementsByClassName('hs')[0]
        var ali=hd.getElementsByTagName('li')
        var bd=obj.getElementsByClassName('bd')[0]
        var aul=bd.getElementsByTagName('img')
        //点击换图片

        var ht=obj.getElementsByClassName('ht')[0]
        var li1=ht.getElementsByTagName('li')
        var ss=obj.getElementsByClassName('ss')[0]
        var h1sp=ss.getElementsByTagName('span')
        //第一个点击

        var hts=obj.getElementsByClassName('hts')[0]
        var li2=hts.getElementsByTagName('li')
        var sx=obj.getElementsByClassName('ss')[0]
        var h1s=sx.getElementsByTagName('span')
        //第三个点击

        var len=ali.length
        for(i=0;i<len;i++){
            ali[i].index=i
            ali[i].onclick=function(){
                for(j=0;j<len;j++){
                    aul[j].style.display=''
                    ali[j].className =''
                }
                aul[this.index].style.display='block'
                this.className='active'
            }
        }

        //点击换图片

        var lens=li1.length
        for(i=0;i<lens;i++){
            li1[i].index=i
            li1[i].onclick=function(){
                for(j=0;j<lens;j++){
                    h1sp[j].style.display=''
                    li1[j].className=''
                }
                h1sp[this.index].style.display='block'
                this.className='active'
            }
        }
        //第一个点击

        var lens1=li2.length
        for(i=0;i<lens1;i++){
            li2[i].index=i
            li2[i].onclick=function(){
                for(j=0;j<lens1;j++){
                    h1s[j].style.display=''
                    li2[j].className=''
                }
                h1s[this.index].style.display='block'
                this.className='active'
            }
        }
        //第三个点击


    }

</script>
</body>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/Details/Details.css">
</head>
</html>