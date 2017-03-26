<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="viewport" content="width=device-width"/>


    <title>发表主题 - 小米社区官方论坛</title>

    <link rel="stylesheet" type="text/css" href='http://s1.bbs.xiaomi.cn/statics/css/zh-cn/index.css?v=1488198200'>
    <link rel="stylesheet" type="text/css" href='http://s1.bbs.xiaomi.cn/statics/css/zh-cn/datePicker.css?v=1488198200'>
    <link rel="stylesheet" type="text/css" href='http://s1.bbs.xiaomi.cn/statics/css/zh-cn/postadvanced.css?v=1488198200'>

    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/ie8-header.css">
    <![endif]-->
    <script type="text/javascript" src='http://s1.bbs.xiaomi.cn/statics/js/lang/zh-cn.js'></script>
    <script type="text/javascript" src='http://s1.bbs.xiaomi.cn/statics/js/lib/jquery.min.js'></script>
    <script type="text/javascript" src='http://s1.bbs.xiaomi.cn/statics/js/base/base.js'></script>
    <!--小米社区寻找android、iOS工程师，亲们简历砸过来 jiangming@xiaomi.com-->
</head>
<%--<jsp:include page="Top.jsp"></jsp:include>--%>
<body>

<script>switchMobile.init()</script>
<div class="main">
    <div class="xmcomm_header_wrap">
    </div>
    <!-- <div class="bannerTop">
        <a href="http://hd.xiaomi.cn/mipop/2016dl/" target="_blank" rel="noopener noreferrer" class="download_pc"><img src="http://cdn.fds.api.xiaomi.com/b2c-bbs-cms/2016/0819/20160819070742289.jpg"></a>
    </div> -->
    <div class='container_wrap wrap_990 clearfix'>
        <div class='postwrap'>
            <div class='postcon'>
                <div class='title clearfix'>
                    <span>发表新主题</span>
                </div>
                <form action="xm_save" method="post">
                    <table class="tt">
                        <tr>
                            <td >标题：<input type="text" name="title" value="请输入标题" style="outline:0;padding:10px 100px 10px 8px;width:327px;line-height:8px;border:1px solid #dfdfdf;text-indent:10px"></td>
                        </tr>
                        <tr>
                                <!-- 加载编辑器的容器 -->
                                <script id="container" name="content" type="text/plain">
                                输入你的帖子
                                </script>
                                <!-- 配置文件 -->
                                <script type="text/javascript" src="UEditor/ueditor.config.js"></script>
                                <!-- 编辑器源码文件 -->
                                <script type="text/javascript" src="UEditor/ueditor.all.js"></script>
                                <!-- 编辑器字体 -->
                                <script type="text/javascript" src="UEditor/lang/zh-cn/zh-cn.js"></script>
                                <!-- 实例化编辑器 -->
                                <script type="text/javascript">
                                    var ss={
                                        initialFrameWidth:800,  //初始化编辑器宽度,默认1000
                                        initialFrameHeight:350,  //初始化编辑器高度,默认320
                                        enableContextMenu: true, //打开右键菜单功能
                                        elementPathEnabled : false,//是否启用元素路径，默认是显示
                                        autoClearinitialContent :true,
                                        wordCount:false,          //是否开启字数统计
                                        maximumWords:10000,     //允许的最大字符数
                                        autoHeightEnabled:false, // 是否自动长高,默认true
                                        emotionLocalization:true, //是否开启表情本地化，默认关闭。若要开启请确保emotion文件夹下包含官网提供的images表情文件夹
                                        toolbars: [[
                                            'source', '|', 'undo', 'redo', '|',
                                            'bold', 'italic', 'underline', 'fontborder','|',
                                            'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
                                            'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
                                            'directionalityltr', 'directionalityrtl', 'indent', '|',
                                            'simpleupload', 'insertimage','justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
                                            'emotion','|',
                                            'help'
                                        ]]
                                    }
                                    var ue = UE.getEditor('container',ss);
                                </script></td>
                        </tr>

                        <tr>
                            <td colspan="2" align="center"><input type="submit" value=" 提交帖子 "> </td>
                        </tr>
                    </table>
                </form>

            </div>
        </div>


    </div>

    <div class="bannerBottom">
        <a href="http://bbs.xiaomi.cn/app/download" target="_blank" rel="noopener noreferrer" class="download_m"><img src="http://s1.bbs.xiaomi.cn/statics/images/banner_bottom_m.png"></a>
    </div>
</div>
<div class='footer brief'>
    <div class="mobile_switch">
        <a class="switch_desktop" id="J_switchDesktop" href="#">电脑版</a>
        <a class="switch_mobile" id="J_switchMobile"  href="#">手机版</a>
        <a class="switch_app download_m" href="#">客户端<i>new</i></a>
    </div>
    <div class='wrap_990'>
        <a href="http://bbs.xiaomi.cn" class='link'>bbs.xiaomi.cn</a>
        <span>京ICP证110507号 京ICP备10046444号 <a target="_blank" rel="noopener noreferrer" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134" style="cursor:pointer;color: white;">京公网安备11010802020134号</a></span>
    </div>
</div>
</body>
<!-- 统计代码 -->
<script>
    var _msq = _msq || [];
    _msq.push(['setDomainId', 112]);
    _msq.push(['trackPageView']);
    (function() {
        var ms = document.createElement('script');
        ms.type = 'text/javascript';
        ms.async = true;
        ms.src = ' http://s1.mi.com/js/xmst.js ';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ms, s);
    })();
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?71558e7b4aa822e282e758f8dc0b88b0";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
<script src="//s1.bbs.xiaomi.cn/statics/js/base/autologin.js"></script></html>

