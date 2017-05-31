<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>欢迎登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>

</head>


<body class="login_bj">
	<div class="zhuce_body">

		<div class="zhuce_kong login_kuang">
			<div class="zc">
				<div class="bj_bai">
					<h3>登录</h3>
					<form action="${pageContext.request.contextPath}/user/login"
						method="get">
						<input name="name" type="text" class="kuang_txt" placeholder="账号">
						<input name="password" type="text" class="kuang_txt"
							placeholder="密码">
						<div>
							<a href="#">忘记密码？</a><input name="" type="checkbox" value=""
								checked><span>记住密码</span>
						</div>
						<input type="submit" class="btn_zhuce" >

					</form>
				</div>
				<div class="bj_right">
					<p>使用以下账号直接登录</p>
					<a href="#" class="zhuce_qq">QQ注册</a> <a href="#" class="zhuce_wb">微博注册</a>
					<a href="#" class="zhuce_wx">微信注册</a>
					<p>
						快速注册？ <a href="register.jsp">立即注册</a>
					</p>

				</div>
			</div>
			<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您来到图书购物系统</P>
		</div>

	</div>

</body>

</html>
