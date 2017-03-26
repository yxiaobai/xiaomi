<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
   <meta charset="UTF-8">
    <title>小米社区官方论坛</title>
    <link rel="stylesheet" type="text/css"
          href='http://s1.bbs.xiaomi.cn/statics/css/zh-cn/index.css?v=1488187758'>
    <link rel="stylesheet" type="text/css"
          href='http://s1.bbs.xiaomi.cn/statics/css/zh-cn/homepage.css?v=1488187758'>

    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/ie8-header.css">
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="css/community/c1.css">
    <script type="text/javascript"
            src='http://s1.bbs.xiaomi.cn/statics/js/lib/jquery.min.js'></script>
    <script type="text/javascript"
            src='http://s1.bbs.xiaomi.cn/statics/js/base/base.js'></script>
    <script type="text/javascript"
            src='http://s1.bbs.xiaomi.cn/statics/js/lib/jquery.lazyload.js'></script>
    <c:if test="${commall == null}">
        <c:redirect url="http://localhost:8080/community"/>
    </c:if>
<body>
<script>
    switchMobile.init()
</script>

<div class="main">
   <div class='container_wrap wrap_990 clearfix'>
        <div class='contain_left fr'>
            <div class='left_wrap'>
                <div class="sidebarplate">
                    <div class="sidebarplate_tab">
                        <div class="tab">
                            <span class="on">版块推荐</span> <span>百宝箱</span>
                        </div>
                    </div>
                    <div>
                        <ul class='on'>
                            <li>

                                   <span style="color:#ff0000;">小米Note 2</span> </li>
                            <li>
                                   <span style="color:#ff0000;">小米MIX</span> </li>
                            <li>小米5/5s/5sPlus</li>
                            <li>小米Max</li>
                            <li>小米笔记本</li>
                            <li>小米电视3s</li>
                            <li>小米平板2</li>
                            <li>小米盒子3</li>
                            <li>小米手机4</li>
                            <li>小米路由器3</li>
                            <li>红米Note4X</li>
                            <li>红米3S</li>
                            <li>小米手环2</li>
                            <li>九号平衡车</li>
                            <li>小米空气净化器2</li>
                            <li>小米VR</li>

                        </ul>
                        <ul>

                            <li>论坛任务</li>
                            <li>搜索</li>
                            <li>我的消息</li>
                            <li>ROM下载</li>
                            <li>VIP认证</li>
                            <li>申请特殊组</li>
                            <li>应用中心</li>
                            <li>小米百科</li>
                            <li>专题汇总</li>
                            <li>小米爆米花</li>
                            <li>办事大厅</li>
                            <li>热门软件</li>
                            <li>网站导航</li>
                            <li>小米大事记</li>
                            <li>小米网</li>
                            <li>天猫旗舰店</li>
                        </ul>
                    </div>
                </div>
            </div>






           <div class="left_wrap">
               <div class="con">
                   <div class="hotspot">
                       <h3>小米社区APP下载</h3>
                       <a href="#" target="_blank"
                          class='shareActive_img'><img
                               src="http://cdn.fds.api.xiaomi.com/b2c-bbs-cms/2015/1127/20151127045012395.png"
                               class="two_dimension_code">
                       </a>
                   </div>
               </div>
           </div>
       </div>
       <div class='contain_right fl clearfix '>
           <a href="index.jsp"> <img src="img/shequ/logo-footer.png" style="padding-bottom: 15px"></a>
           <div class='theme'>
               <div class='theme_con'>
                   <div class='theme_nav'>
                       <a href="#" class='theme_nav_list'>
                       最新主题 </a> <a href="comms.jsp"
                                    class='btn theme_nav_btn'>发表新主题</a>
                   </div>
                   <ul>
                       <c:forEach items="${commall}" var="i">

                       <li class='theme_list clearfix' u-id="41959073">
                           <div class='theme_list_img'>
                               <a href="#"
                                  class='headportrait' target="_blank" rel="noopener noreferrer">
                                   <img class="user_head"
                                        src='http://s1.bbs.xiaomi.cn/statics/images/noavatar_small.gif'/>
                               </a>
                           </div>

                        <%--   shop_bbg.jsp?did=<%=mm1.get("id")--%>



                           <div class='theme_list_con'>
                               <div class='title'>
                                   <a href="comms1?c_id=${i.c_id}" class='title_name '
                                      target="_blank" rel="noopener noreferrer">
                                      ${i.title} <%--明天见！首款小米松果自主研发手机芯片--%> </a>
                               </div>

                               <div class='auth_msg clearfix'>
                                   <a href="#"
                                      class='user_name' target="_blank" rel="noopener noreferrer">小米社区</a>
                                   <a href="dels?c_id=${i.c_id}"><span class='comefrom txt'>删除</span></a>
                               </div>

                           </div>
                       </li>
                       </c:forEach>
                   </ul>
                   <div>
                       <td><a href="${community}?page=${page.firstPage}">首页</a></td>
                       <c:if test="${page.hasPreviousPage}">
                           <td><a href="${community}?page=${page.prePage}">上一页</a></td>
                       </c:if>
                       <c:if test="${page.hasNextPage}">
                           <td><a href="${community}?page=${page.nextPage}">下一页</a></td>
                       </c:if>
                       <td><a href="${community}?page=${page.lastPage}">末页</a></td>
                       &nbsp;
                       <td>第${page.pageNum}页|共${page.pages}页|共${page.total}条</td>
                   </div>
               </div>
           </div>
           <script type="text/javascript"
                   src='http://s1.bbs.xiaomi.cn/statics/js/base/personLayer.js'></script>
       </div>
       <script type="text/javascript"
               src='http://s1.bbs.xiaomi.cn/statics/js/base/slide.js'></script>
   </div>
   <div class="bannerBottom">
       <a href="http://bbs.xiaomi.cn/app/download" target="_blank"
          rel="noopener noreferrer" class="download_m"><img
               src="http://s1.bbs.xiaomi.cn/statics/images/banner_bottom_m.png"></a>
   </div>
</div>
<div class='footer'>
    <div class="mobile_switch">
        <a class="switch_desktop" id="J_switchDesktop" href="#">电脑版</a> <a
            class="switch_mobile" id="J_switchMobile" href="#">手机版</a> <a
            class="switch_app download_m" href="#">客户端<i>new</i></a>
    </div>
    <div class='footertop'>
        <div class='wrap_990'>
            <div class='footertop_con'>
                <dl>
                    <dd>
                        <a href="http://www.cnmo.com/" target="_blank"
                           rel="noopener noreferrer">手机中国</a>
                    </dd>
                    <dd>
                        <a href="http://bbs.kuaipan.cn/" target="_blank"
                           rel="noopener noreferrer">金山快盘</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="http://www.leiphone.com/" target="_blank"
                           rel="noopener noreferrer">雷锋网</a>
                    </dd>
                    <dd>
                        <a href="http://www.chinaz.com/" target="_blank"
                           rel="noopener noreferrer">站长之家</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="http://www.mydrivers.com/" target="_blank"
                           rel="noopener noreferrer">驱动之家</a>
                    </dd>
                    <dd>
                        <a href="http://bbs.feng.com/" target="_blank"
                           rel="noopener noreferrer">威锋论坛</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="http://mobile.zol.com.cn/" target="_blank"
                           rel="noopener noreferrer">ZOL手机频道</a>
                    </dd>
                    <dd>
                        <a href="http://bbs.zhiyoo.com/" target="_blank"
                           rel="noopener noreferrer">安卓网</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="http://bbs.mumayi.com/" target="_blank"
                           rel="noopener noreferrer">安卓论坛</a>
                    </dd>
                    <dd>
                        <a href="http://www.znds.com/" target="_blank"
                           rel="noopener noreferrer">智能电视网</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="http://www.igao7.com/" target="_blank"
                           rel="noopener noreferrer">爱搞机</a>
                    </dd>
                    <dd>
                        <a href="http://www.tvhome.com/" target="_blank"
                           rel="noopener noreferrer">电视之家</a>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
    <div class='footerdown'>
        <div class='wrap_990'>
            <a href="http://bbs.xiaomi.cn" class='milogo'>mi</a> <a
                href="http://bbs.xiaomi.cn" class='link'>bbs.xiaomi.cn</a> <span>京ICP证110507号
					京ICP备10046444号 <a target="_blank" rel="noopener noreferrer"
                                      href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134"
                                      style="cursor:pointer;color: white;">京公网安备11010802020134号</a>
				</span>
        </div>
    </div>
</div>
</body>
<%--<script src="//s1.bbs.xiaomi.cn/statics/js/base/autologin.js"></script>--%>
</html>