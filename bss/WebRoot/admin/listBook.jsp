<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/skin.css" />
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top" background="./Images/mail_left_bg.gif">
				<img src="./Images/left_top_right.gif" width="17" height="29" />
			</td>
			<td valign="top" background="./Images/content_bg.gif">
				<table width="100%" height="31" border="0" cellpadding="0"
					cellspacing="0" background="././Images/content_bg.gif">
					<tr>
						<td height="31"><div class="title">商品列表</div></td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="./Images/mail_right_bg.gif"><img
				src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
		</tr>
		<!-- 中间部分开始 -->
		<tr>
			<!--第一行左边框-->
			<td valign="middle" background="./Images/mail_left_bg.gif">&nbsp;</td>
			<!--第一行中间内容-->
			<td valign="top" bgcolor="#F7F8F9">
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					<tr>
						<td colspan="2" valign="top">&nbsp;</td>
						<td>&nbsp;</td>
						<td valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4">
							<table>
								<tr>
									<td width="100" align="center"><img
										src="./Images/mime.gif" /></td>
									<td valign="bottom"><h3 style="letter-spacing:1px;">您可以查看商品列表并删除</h3></td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- 一条线 -->
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- 产品列表开始 -->
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="96%">
							<table width="100%">
								<tr>
									<td colspan="2">
										<form action="" method="">
											<table width="100%" class="cont tr_color">
												<tr>
													<th>选中</th>
													<th>编号</th>
													<th>名称</th>
													<th>价格</th>
													<th>库存</th>

													<th>操作</th>
												</tr>
												
												<c:forEach var="book" items="${sessionScope.books}"
												begin="0" end="10"	varStatus="index">
													<tr align="center" class="d">
														<td><input type="checkbox" value="" /></td>
														<td>${book.id}</td>
														<td>${book.name}</td>
														<td>${book.price }</td>
														<td>${book.storage }</td>

														<td>删除</td>
													</tr>

												</c:forEach>
												
											</table>
										</form>
									</td>
								</tr>
							</table>
						</td>
						<td width="2%">&nbsp;</td>
					</tr>
					<!-- 产品列表结束 -->
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="51%" class="left_txt"><img
							src="./Images/icon_mail.gif" width="16" height="11">
							个人邮箱：1391968591@qq.com<br /> <img src="./Images/icon_phone.gif"
							width="17" height="14"> 联系方式：1519728****</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<td background="./Images/mail_right_bg.gif">&nbsp;</td>
		</tr>
		<!-- 底部部分 -->
		<tr>
			<td valign="bottom" background="./Images/mail_left_bg.gif"><img
				src="./Images/buttom_left.gif" width="17" height="17" /></td>
			<td background="./Images/buttom_bgs.gif"><img
				src="./Images/buttom_bgs.gif" width="17" height="17"></td>
			<td valign="bottom" background="./Images/mail_right_bg.gif"><img
				src="./Images/buttom_right.gif" width="16" height="17" /></td>
		</tr>
	</table>
</body>
</html>