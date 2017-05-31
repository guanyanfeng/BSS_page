<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
    <title>网站后台管理中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link rel="stylesheet" type="text/css" href="css/skin.css" />
</head>
    <body>
        <table width="100%">
            <!-- 顶部部分 -->
            <tr height="41"><td colspan="2" background="./Images/login_top_bg.gif">&nbsp;</td></tr>
            <!-- 主体部分 -->
            <tr style="background:url(./Images/login_bg.jpg) repeat-x;" height="532">
                <!-- 主体左部分 -->
                <td id="left_cont">
                    <table width="100%" height="100%">
                        <tr height="155"><td colspan="2">&nbsp;</td></tr>
                        <tr>
                            <td width="20%" rowspan="2">&nbsp;</td>
                            <td width="60%">
                                <table width="100%">
                                    <tr height="274">
                                        <td valign="top" align="right">
                                            <ul>
                                                <li>1- 管理用户信息...</li>
                                                <li>2- 管理订单信息...</li>
                                                <li>3- 管理商品信息...</li>
                                                <li>......</li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            <td width="15%" rowspan="2">&nbsp;</td>
                            </td>
                        </tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                    </table>
                </td>
                <!-- 主体右部分 -->
                <td id="right_cont">
                    <table height="100%">
                        <tr height="30%"><td colspan="3">&nbsp;</td></tr>
                        <tr>
                            <td width="30%" rowspan="5">&nbsp;</td>
                            <td valign="top" id="form">
                                <form action="${pageContext.request.contextPath}/user/admin" method="post">
                                    <table valign="top" width="50%">
                                        <tr><td colspan="2"><h4 style="letter-spacing:1px;font-size:16px;">图书购物系统管理后台</h4></td></tr>
                                        <tr><td>管理员：</td><td><input type="text" name="name" value="" /></td></tr>
                                        <tr><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="password" value="" /></td></tr>
                                        <tr><td>验证码：</td><td><input type="text" name="" value="" style="width:80px;"/></td></tr>
                                        <tr class="bt" align="center"><td>&nbsp;<input type="submit" value="登陆" /></td><td>&nbsp;<input type="reset" value="重填" /></td></tr>
                                    </table>
                                </form>
                            </td>
                            <td rowspan="5">&nbsp;</td>
                        </tr>
                        <tr><td colspan="3">&nbsp;</td></tr>
                    </table>
                </td>
            </tr>
            <!-- 底部部分 -->
            <tr id="login_bot"><td colspan="2"><p>Copyright © 2017 湖南科技大学个人毕业作品</p></td></tr>
        </table>
    </body>
</html>