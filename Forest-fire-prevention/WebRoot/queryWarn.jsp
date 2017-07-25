<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 解决传值中文论码 -->
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- 显示告警监控页面     只能用户登录后才能访问。 -->
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
<title>告警查询</title>
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
				</table>
			</td>
		</tr>
		<tr>
			<td width="28" valign="middle">&nbsp;<img
				src="images/jiantou.jpg" width="15" height="17" /></td>
			<td width="960" valign="middle"><span class="STYLE1">当前位置：</span>告警查询</td>
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
							bgcolor="#FFFFFF"><span class="STYLE3">&nbsp;查询结果：</span></td>
					</tr>
					<tr>
						<td height="28" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
							align="center">查询的网关： <%
							String gatewayname1;
							gatewayname1 = request.getParameter("gatewayname");
							out.println(gatewayname1);
						%>
						</td>
						<td height="28" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
							align="center">查询的告警级别： <%
							String warnrank1;
							warnrank1 = request.getParameter("warnrank");
							out.println(warnrank1);
						%>
						</td>

					</tr>
				</table></td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
				<table align="center" border="1" bgcolor="#E6E6FA">
					<thead>
						<tr>
							<th align="center">序号</th>
							<th align="center">网关名称</th>
							<th align="center">告警级别</th>
							<th align="center">告警信息</th>
							<th align="center">发生时间</th>
						</tr>
					</thead>
					<tbody>
						<%
							String driverClass = "com.mysql.jdbc.Driver";
							String url = "jdbc:mysql://118.89.38.92:3306/forest-fire-prevention";
							String username = "xzq";
							String password = "123456";
							/* 注册驱动 */
							Class.forName(driverClass);
							/* 获得连接 */
							Connection conn = DriverManager.getConnection(url, username,
									password);
							/* 申请一个statement */
							Statement st = conn.createStatement();
							//从showWarn.jsp 接收要查询的的网关名称
							String gatewayname2;
							gatewayname2 = request.getParameter("gatewayname");
							System.out.println(gatewayname2);
							//从showWarn.jsp 接收要查询的的告警级别
							String warnrank2;
							warnrank2= request.getParameter("warnrank");
							System.out.println(warnrank2);
							/*  执行SQL语句 */
							String querySQL = "select * from gateway where gatename='"+gatewayname2+"'AND warnrank='"+warnrank2+"'";
							System.out.println(querySQL);
							st.executeQuery(querySQL);
							/* 处理结果集 */
							ResultSet rs = st.executeQuery(querySQL);

							int gatewayid;
							String gatename;
							String warnrank;
							String warninfo;
							String datetime;
							//将查询结果集中的记录输出到页面上  
							while (rs.next()) {
								//从当前记录中读取各字段的值    
								gatewayid = rs.getInt(1);
								gatename = rs.getString(2).trim(); //.trim()去除空格
								warnrank = rs.getString(3).trim();
								warninfo = rs.getString(4).trim();
								datetime = rs.getString(5).trim();
								out.println("<tr>");

								out.println("<td>");
								out.println(gatewayid);
								out.println("</td>");

								out.println("<td>");
								out.println(gatename);
								out.println("</td>");

								out.println("<td>");
								out.println(warnrank);
								out.println("</td>");

								out.println("<td>");
								out.println(warninfo);
								out.println("</td>");

								out.println("<td>");
								out.println(datetime);
								out.println("</td>");

								out.println("</tr>");
							}

							/*   关闭jbbc对象    */
							rs.close();
							st.close();
							conn.close();
						%>
					</tbody>
				</table>
				<p align="center">
					<a href="menu.jsp">返回主界面</a>
				</p></td>
		</tr>
	</table>
</body>
</html>