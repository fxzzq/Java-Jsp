<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 显示告警发布页面     只能用户登录后才能访问。 -->
<%
	String login = (String) request.getSession().getAttribute(
			"loginname");
	if (login != null) {
	} else {
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>告警发布</title>
<style>
  m{color:red;}
</style>
</head>
<body>
	<h1 align="center">森林防火系统</h1>
	<h2>
		<%@include file="time.jsp" %>
	</h2>
	<table align="center" width="90%">
		<tr>
			<td colspan="2">
				<table width="750px">
					<tr>
						<td align="right" valign="middle">&nbsp;</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="28" valign="middle">&nbsp;<img
				src="images/jiantou.jpg" width="15" height="17" />
			</td>
			<td width="960" valign="middle"><span class="STYLE1">当前位置：</span>告警发布</td>
		</tr>
		<tr>
			<td height="4" colspan="2" bgcolor="afdf69"></td>
		</tr>
		<tr>
			<td colspan="2">
			
					<table border="0" align="center" cellpadding="0" cellspacing="1"
						bgcolor="#afdf69" width="100%">
						<tr>
							<td height="28" colspan="4" bordercolor="#FFFFFF"
								bgcolor="#FFFFFF"><span class="STYLE3">&nbsp;发布条件：</span>
							</td>
						</tr>
						<tr>
							<td height="28" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="left">查询温度大于37℃    然后发布一个<m>轻度预警</m>
							</td>
							<td height="24" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="center">
								<a href="doWarn.jsp">查询</a> </td>
							</tr>
							<tr>
							<td height="28" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="left">查询温度大于37℃  、相对湿度小于10%RH  然后发布一个<m>中度预警</m>
							</td>
							<td height="24" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="center">
								<a href="doWarn1.jsp">查询</a> </td>
								</tr>
							<tr>
							<td height="28" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="left">查询温度大于37℃ 、相对湿度小于10%RH、火焰值大于255mA   然后发布一个<m>重度预警</m>
							</td>
							<td height="24" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="center">
								<a href="doWarn2.jsp">查询</a> </td>
								</tr>
					
							<tr>
							<td height="28" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="left">查询温度大于37℃ 、相对湿度小于10%RH、火焰值大于255mA、可燃气体含量>0.5%  然后发布一个<m>超重度预警</m>
							</td> 
							<td height="24" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
								align="center">
								<a href="doWarn3.jsp">查询</a> </td>
								</tr>
						
					</table>
				</td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
						
				<p align="center"><a href="menu.jsp">返回主界面</a></p>
				</td>
		</tr>
	</table>
</body>
</html>