<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="././Images/content_bg.gif">
                        <tr><td height="31"><div class="title">修改商品</div></td></tr>
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
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="./Images/mime.gif" /></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">在这里，您可以先根据商品名查询在修改。</h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                       
                        <!-- 添加商品开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                 <tr>
                         <form action="${pageContext.request.contextPath}/queryName" method="post">
                         &nbsp;&nbsp;&nbsp;商品名称：<input class="text" type="text" name="name" value="" />
                          &nbsp;&nbsp;&nbsp;<input class="btn" type="submit" value="搜索" />
                         </form></tr>
                                    <tr>
                                        <td colspan="2">
                                            <form action="${pageContext.request.contextPath}/modifyBook" method="post">
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">商品名称：</td>
                                                        <td width="25%"><input class="text" type="text" name="name" value="${sessionScope.book.name}" /></td>
                                                       
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品编号：</td>
                                                        <td width="20%"><input class="text" type="text" name="id" value="${sessionScope.book.id}" /></td>
                                                       
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品图片：</td>
                                                       
                                                        <td width="20%"><input type="file" name="img" /></td>
                                                       
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>库存量：</td>
                                                        <td width="20%"><input class="text" style="width:50px;" type="text" name="storage" value="${sessionScope.book.storage}" /></td>
                                                       
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品价格：</td>
                                                        <td width="20%"><input class="text" style="width:100px;" type="text" name="price" value="${sessionScope.book.price}" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                   
                                                   
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>商品分类：</td>
                                                        <td>
                                                            <select>
                                                                <option selected="selected">请选择...</option>
                                                                <option>人文科学</option>
                                                                <option>计算机</option>
                                                                <option>电子书</option>
                                                                <option>儿童读物</option>
                                                            </select>
                                                        </td>
                                                        
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>描述(Description)：</td>
                                                        <td><textarea name="describe" >${sessionScope.book.describe}</textarea></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="3"><input class="btn" type="submit" value="提交" /></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加商品结束 -->
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