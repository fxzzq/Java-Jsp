<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
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
<title>折线图分析</title>
</head>
<body>
	<h1 align="center">森林防火系统</h1>
	
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
			<td width="960" valign="middle"><span class="STYLE1">当前位置：</span>折线图分析</td>
		</tr>
		<tr>
			<td height="4" colspan="2" bgcolor="afdf69"></td>
		</tr>
		<tr>
			<td colspan="2">
			
			
					<table border="0" align="left" cellpadding="0" cellspacing="1"
						bgcolor="#afdf69" width="100%">
						<tr>
							<td>
							<center>
							<a href="analysis.jsp"><b><big>温度</big></b></a>:
								<a href="analysis1.jsp"><b><big>湿度</big></b></a>:
								<a href="analysis2.jsp"><b><big>火焰</big></b></a>:
								<a href="analysis3.jsp"><b><big>气体</big></b></a>:
							</center>
							
							</td>
						</tr>
					
					</table>
				</td>
		</tr>
		
	</table>
	<table align="center">
	<tr>
	<td>
	<img src="images/humi.png" /> <br>
    <p align="center"><a href="menu.jsp">返回主界面</a>
				
				</p>
	</td>
	</tr>
	</table>
    
  
</body>
</html>