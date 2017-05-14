<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>欢迎注册</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>

<body class="login_bj">

	<div class="zhuce_body">

		<div class="zhuce_kong">
			<div class="zc">
				<div class="bj_bai">
					<h3>欢迎注册</h3>
					<form action="${pageContext.request.contextPath}/user/register" method="post">
						<input name="name" type="text" class="kuang_txt phone" placeholder="用户名">
						 <input name="email" type="text"class="kuang_txt email" placeholder="邮箱" /> 
						<input name="password1" type="text" class="kuang_txt possword" placeholder="密码">
						<input name="password2" type="text" class="kuang_txt possword" placeholder="再次输入密码">
						<input name="gender" type="text" class="kuang_txt phone" placeholder="性别">
						<input name="age" type="text" class="kuang_txt phone" placeholder="生日(如：1993-11-11)">
						<input name="yzm" type="text" class="kuang_txt yanzm" placeholder="验证码">
						<div>
							<div class="hui_kuang">
								<img src="images/zc_22.jpg" width="92" height="31">
							</div>
							<div class="shuaxin">
								<a href="#"><img src="images/zc_25.jpg" width="13"
									height="14"></a>
							</div>
						</div>
						<div>
							<input name="" type="checkbox" value=""><span>已阅读并同意<a
								href="#" target="_blank"><span class="lan">《XXXXX使用协议》</span></a>
							</span>
						</div>
						<input name="注册" type="submit" class="btn_zhuce" value="注册">

					</form>
				</div>
				<div class="bj_right">
					<p>使用以下账号直接登录</p>
					<a href="#" class="zhuce_qq">QQ注册</a> <a href="#" class="zhuce_wb">微博注册</a>
					<a href="#" class="zhuce_wx">微信注册</a>
					<p>
						已有账号？ <a href="login.jsp">立即登录</a>
					</p>

				</div>
			</div>
			<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您来到图书购物系统</P>
		</div>

	</div>


</body>
</html>
