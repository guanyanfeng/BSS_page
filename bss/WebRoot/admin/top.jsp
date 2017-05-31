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
    <script type="text/javascript">
        function logout() {
            if(window.confirm('您确定要退出吗？')) {
                top.location = 'login.jsp';
            }
        }       
    </script>
</head>
    <body>
        <table cellpadding="0" width="100%" height="64" background="Images/top_top_bg.gif">
            <tr valign="top">
                <td width="50%"><a href="javascript:void(0)"></a></td>
                <td width="30%" style="padding-top:13px;font:15px Arial,SimSun,sans-serif;color:#FFF">管理员：<b>${sessionScope.admin.name}</b> 您好，感谢登陆使用！</td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="Images/index.gif" /></a></td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="Images/out.gif" onclick="logout();" /></a></td>
            </tr>
        </table>
    </body>
</html>
