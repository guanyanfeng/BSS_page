<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html >
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
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="././Images/content_bg.gif">
                        <tr><td height="31"><div class="title">欢迎界面</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="./Images/mail_right_bg.gif"><img src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="./Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <tr>
                            <!--左边内容-->
                            <td colspan="2" valign="top">
                                <h3 style="margin:0 0 10px 10px;">欢迎进入后台管理系统</h3>
                                <img src="./Images/ts.gif" width="16" height="16" style="margin-left:10px;"> 提示：<br />
                                <p style="text-indent:20px;line-height:25px;margin-left:10px;font-size:15px;">这是图书购物系统的后台管理系统，在这里你可以管理网站的基本信息。 <br />&nbsp;&nbsp;&nbsp;&nbsp;你在修改系统关键信息时，请仔细核对再提交。</p>
                            </td>
                            <!--间隔-->
                            <td width="7%">&nbsp;</td>
                            <!--右边内容-->
                            <td width="40%" valign="top">
                                <table width="100%" height="150" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" height="27" background="./Images/news_title_bg.gif">
                                            <img src="./Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" background="./Images/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                    <tr>
                                        <td height="100" valign="top" colspan="2" id="news">
                                            <marquee direction="up" scrollamount="2" vspace="30px" width="400px" height="100px" onmouseout="this.start()" onmouseover="this.stop()">
                                                <ul>
                                                    <li>湖南科技大学</li>
                                                    <li>教育学院</li>
                                                    <li>教育技术学</li>
                                                    <li>毕业设计作品</li>
                                                    
                                                </ul>
                                            </marquee>
                                        </td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr height="20"><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <!--第二行-->
                        <tr>
                            <td colspan="2" valign="top">
                                <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" background="./Images/news_title_bg.gif">
                                            <img src="./Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" background="./Images/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr>
                                        <td height="186" valign="top" colspan="2"></td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td valign="top">
                                <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" background="./Images/news_title_bg.gif">
                                            <img src="./Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" height="27" background="./Images/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr><td height="186" valign="top">&nbsp;</td><td height="102" valign="top"></td></tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
                                <img src="./Images/icon_mail.gif" width="16" height="11"> 个人邮箱：1391968591@qq.com<br />
                                <img src="./Images/icon_phone.gif" width="17" height="14"> 联系方式：1519728****
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="./Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="./Images/mail_left_bg.gif">
                    <img src="./Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="./Images/buttom_bgs.gif">
                    <img src="./Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="./Images/mail_right_bg.gif">
                    <img src="./Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>
</html>