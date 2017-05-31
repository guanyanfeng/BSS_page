<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情</title>
<meta name="keywords"
	content="shoes store, product detail, free template, ecommerce, online shop, website templates, CSS, HTML" />
<meta name="description"
	content="Shoes Store, Product Detail, free ecommerce template provided " />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">
	
</script>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "top_nav", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})
</script>

<script type="text/javascript" src="js/jquery-1-4-2.min.js"></script>
<link rel="stylesheet" href="css/slimbox2.css" type="text/css"
	media="screen" />
<script type="text/JavaScript" src="js/slimbox2.js"></script>

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
					<form action="${pageContext.request.contextPath}/query" method="get">
						<input type="text" value=" " name="likeName" id="keyword"
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
				<div id="content" class="float_r">
					<h1>商品详情</h1>
					<div class="content_half float_l">
						<img src="images/product/${sessionScope.book.img }" alt="image" />
					</div>
					<div class="content_half float_r">
						<table>
							<tr>
								<td width="160">价格:</td>
								<td>¥${sessionScope.book.price }</td>
							</tr>
							<tr>
								<td>库存:</td>
								<td>${sessionScope.book.storage }</td>
							</tr>
							<tr>
								<td>促销:</td>
								<td>满50免运费</td>
							</tr>
							<tr>
								<td>出版社:</td>
								<td>机械工业出版社</td>
							</tr>
							<tr>
								<td>数量</td>
								<td><input type="text" value="1"
									style="width: 20px; text-align: right" /></td>
							</tr>
						</table>
						<div class="cleaner h20"></div>

						<a href="${pageContext.request.contextPath}/cart?userId=${sessionScope.user.id}&bookId=${sessionScope.book.id}" class="addtocart"></a>

					</div>
					<div class="cleaner h30"></div>

					<h5>商品描述</h5>
					<p>${sessionScope.book.describe}</p>

					<div class="cleaner h50"></div>


					<h3>相关推荐</h3>
					<div class="product_box">
						<h3>我是花木兰</h3>
						<a href="productdetail.jsp"><img
							src="images/product/book1.jpg" alt="Shoes 1" /></a>
						<p>国际安徒生奖评委会主席玛利亚女士逐页导读 书籍设计家插图画家吕敬人暖心推介</p>
						<p class="product_price">¥23.40</p>
						<a href="shoppingcart.jsp" class="addtocart"></a> <a
							href="productdetail.jsp" class="detail"></a>
					</div>
					<div class="product_box">
						<h3>鸟哥的Linux私房菜</h3>
						<a href="productdetail.jsp"><img
							src="images/product/book2.jpg" alt="Shoes 2" /></a>
						<p>基础学习篇(第三版)(Linux领域名人鸟哥带你迈入Linux殿堂)</p>
						<p class="product_price">¥60.00</p>
						<a href="shoppingcart.jsp" class="addtocart"></a> <a
							href="productdetail.jsp" class="detail"></a>
					</div>
					<div class="product_box no_margin_right">
						<h3>穿堂风</h3>
						<a href="productdetail.jsp"><img
							src="images/product/book6.jpg" alt="Shoes 3" /></a>
						<p>像一面镜子一样，照到每个人的内心深处，是属于所有人的故事</p>
						<p class="product_price">¥18.00</p>
						<a href="shoppingcart.jsp" class="addtocart"></a> <a
							href="productdetail.jsp" class="detail"></a>
					</div>

				</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of templatemo_main -->

			<div id="templatemo_footer">
				<p>
					<a href="#">联系我们</a> | <a href="#">意见建议</a> | <a href="#">声明</a> |
					<a href="#">简介</a> | <a href="#">教技</a> | <a href="#">湖科大</a>
				</p>

				Copyright (c) 2017 <a href="#">个人毕业设计作品</a>

			</div>
			<!-- END of templatemo_footer -->

		</div>
		<!-- END of templatemo_wrapper -->
	</div>
	<!-- END of templatemo_body_wrapper -->
</body>

</html>