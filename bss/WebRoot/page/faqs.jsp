<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>常见问题</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">
	
</script>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "top_nav", //菜单栏插件
		orientation : 'h',
		classname : 'ddsmoothmenu',
		contentsource : "markup"
	})
</script>

</head>

<body>

	<div id="templatemo_body_wrapper">
		<div id="templatemo_wrapper">

			<div id="templatemo_header">
				<div id="site_title">
					<h1>
						<a href="#">理多不一定对，好书不一定贵</a>
					</h1>
				</div>
				<div id="header_right">
					<p>
						<c:if test="${!empty user}">欢迎，${sessionScope.user.name}</c:if>
						<c:if test="${empty user}">
							<a href="login.jsp">请先登录</a>
						</c:if>

						| <a href="user.jsp">我的账号</a> | <a href="#">我的收藏</a> | <a
							href="${pageContext.request.contextPath}/lookcart?userId=${sessionScope.user.id}">我的购物车</a>
						| <a href="#">账单</a>
					</p>
				</div>
				<div class="cleaner"></div>
			</div>
			<!-- 头部结束 -->

			<div id="templatemo_menubar">
				<div id="top_nav" class="ddsmoothmenu">
					<ul>
						<li><a href="index.jsp" class="selected">首页</a></li>
						<li><a href="products.jsp">图书分类</a>
							<ul>
								<li><a href="#">儿童读物</a></li>
								<li><a href="">自然科学</a></li>
								<li><a href="#">人文社科</a></li>
								<li><a href="#">教育</a></li>
								<li><a href="#">小说</a></li>

							</ul></li>
							<li><a href="${pageContext.request.contextPath}/lookOrder?userId=${sessionScope.user.id}">订单</a></li>
						
						<li><a href="faqs.jsp">帮助中心</a></li>
						
						<li><a href="contact.jsp">联系我们</a></li>
						<li><a href="about.jsp">关于我们</a>
							<ul>
								<li><a href="#">公司简介</a></li>
								<li><a href="#">团队介绍</a></li>

							</ul></li>
					</ul>
					<br style="clear: left" />
				</div>
				<div id="templatemo_search">
					<form action="#" method="get">
						<input type="text" value=" " name="keyword" id="keyword"
							title="keyword" onfocus="clearText(this)"
							onblur="clearText(this)" class="txt_field" /> <input
							type="submit" name="Search" value=" " alt="Search"
							id="searchbutton" title="Search" class="sub_btn" />
					</form>
				</div>
			</div>

			<div id="templatemo_main">
				<div id="sidebar" class="float_l">
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>类别</h3>
						<div class="content">
							<ul class="sidebar_list">
								<li class="first"><a href="#">教育</a></li>
								<li><a href="#">生活</a></li>
								<li><a href="#">电子书</a></li>
								<li><a href="#">青春文学</a></li>
								<li><a href="#">经管类</a></li>
								<li><a href="#">科普类</a></li>
								<li><a href="#">励志</a></li>
								<li><a href="#">漫画</a></li>
								<li><a href="#">计算机类</a></li>
								<li><a href="#">期刊</a></li>
								<li><a href="#">英文原著</a></li>
								<li><a href="#">港澳台图书</a></li>
								<li><a href="#">中小学教材</a></li>
								<li><a href="#">文艺</a></li>
								<li class="last"><a href="#">影像</a></li>
							</ul>
						</div>
					</div>
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>畅销榜</h3>
						<div class="content">
							<div class="bs_box">
								<a href="#"><img src="images/bangdan2.jpg" alt="image" /></a>
								<h4>
									<a href="#">岛上书店</a>
								</h4>
								<h5>现象级全球畅销书</h5>
								<p class="price">¥24.20</p>
								<div class="cleaner"></div>
							</div>
							<div class="bs_box">
								<a href="#"><img src="images/bangdan3.jpg" alt="image" /></a>
								<h4>
									<a href="#">好的孤独</a>
								</h4>
								<h5>复旦名师陈果之作</h5>
								<p class="price">¥22.40</p>
								<div class="cleaner"></div>
							</div>
							<div class="bs_box">
								<a href="#"><img src="images/bangdan4.jpg" alt="image" /></a>
								<h4>
									<a href="#">人工智能</a>
								</h4>
								<h5>开启人工智能时代</h5>
								<p class="price">¥35.40</p>
								<div class="cleaner"></div>
							</div>
							<div class="bs_box">
								<a href="#"><img src="images/bangdan5.jpg" alt="image" /></a>
								<h4>
									<a href="#">工匠精神</a>
								</h4>
								<h5>向价值型员工进化</h5>
								<p class="price">¥23.00</p>
								<div class="cleaner"></div>
							</div>
						</div>
					</div>
				</div>
				<div id="content" class="float_r faqs">
					<h1>常见问题</h1>
					<h5>如何修改个人的基本信息？</h5>
					<p>在网站的首页上方点击我的账号，进入后可以根据提示修改密码、手机号、出生日期等信息</p>

					<h5>我的订单合适发货？</h5>
					<p>
						请阅读我们公司的发货安排管理条例. <a href="#">《相关规定》</a>
					</p>

					<h5>有哪些支付方式？</h5>
					<p>我们与多家银行和在线支付平台达成协议，顾客可以放心、安心购物。如有订单金额问题请及时联系我们的客服，我们会在最短的时间内为你解决问题。</p>

					<h5>如何申请退货？</h5>
					<p>
						你可以在网站的页面上申请退货，也可以和我们的客服联系。具体规定请阅读相关规定。 <a href="#">《退单规定》</a>
					</p>

					<h5>如何补开发票？</h5>
					<p>
						下单时，在“发票信息”处，选择“电子发票”，填写发票抬头、发票内容，点击“确认发票信息”，用户可在商品送达后的1天，进入“我的订单”，下载电子发票。
						也开为你办理增值发票：下单时，在“发票信息”处，选择“增值税发票”，无需填写发票抬头，发票内容默认“明细”，点击“确认发票信息”。
					</p>
					<p>自2016年1月1日起，国家规定电子发票可作为报销凭证。电子发票可作为用户维权、保修的有效凭据。</p>

					<h5>如何防御诈骗？</h5>
					<p>近期骗子异常活跃，现提供一点防骗小招，请大家在购物时谨防诈骗。</p>
					<ul class="tmo_list">
						<li>绝招1：拒绝向陌生人转账、汇款，不要在陌生链接中付款，不要接受陌生文件或随意扫描陌生二维码付款。</li>
						<li>绝招2：收到中奖消息后请仔细辨认，本网店没有“周年庆典”、“幸运用户抽奖”等活动，官网活动领奖不需要缴纳手续费、快递费。</li>
						<li>绝招3：任何一个验证码都有可能和您的款项相关，请勿随意告知他人。</li>
						<li>绝招4：任何涉及款项、个人信息等相关操作，请第一时间联系官方客服核实确认。</li>

					</ul>
				</div>
				<div class="cleaner"></div>
			</div>

			<div id="templatemo_footer">
				<p>
					<a href="#">联系我们</a> | <a href="#">意见建议</a> | <a href="#">声明</a> |
					<a href="#">简介</a> | <a href="#">教技</a> | <a href="#">湖科大</a>
				</p>

				Copyright (c) 2017 <a href="#">个人毕业设计作品</a>

			</div>


		</div>
	</div>

</body>

</html>