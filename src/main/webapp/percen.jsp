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
									<li class="active"><a href="#">我的个人中心</a></li>
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
								<div class="portal-main clearfix">
									<div class="user-card">
										<h2 class="username"><%=session.getAttribute("member")%></h2>
										<p class="tip">早上好～</p>
										<a class="link" href="up_user?u_name=<%=session.getAttribute("member")%>" target="_blank">修改个人信息 &gt;</a> <img
											class="avatar"
											src="img/shequ/<%=session.getAttribute("face")%>.jpg"
											width="150" height="150" alt="1227520857" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
