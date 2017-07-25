<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 显示告警清除页面     只能管理员登录后才能访问。 -->
<%
	String login = (String) request.getSession().getAttribute(
			"loginname");
	if ("admin".equals(login)) {
	} else {
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>告警清除</title>
</head>
<body>
<table width="845" cellspacing="0" align="center">
<tr>
    <td height="124" colspan="2" background="images/topU.gif">&nbsp;</td>
  </tr>
</table>
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
			<td width="960" valign="middle"><span class="STYLE1">当前位置：</span>告警清除 &nbsp;&nbsp;&nbsp;&nbsp;
			 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<b><strong><big>森林防火系统(管理员)</big></strong></b></td>
		</tr>
		
		<table align="center" border="1" bgcolor="#E6E6FA">
					<thead>
						<tr>
							<th align="center">网关编号</th>
							<th align="center">网关名称</th>
							<th align="center">告警级别</th>
							<th align="center">告警信息</th>
							<th align="center">发生时间</th>
							<th align="center">操作</th>
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
							/*  执行SQL语句 */
							String querySQL = "select * from gateway ";
							System.out.println(querySQL);
							st.executeQuery(querySQL);
							/* 处理结果集 */
							ResultSet rs = st.executeQuery("select * from gateway");

							String passname;//deal_deleteWarn.jsp传到.jsp
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
								warninfo=rs.getString(4).trim();
								datetime=rs.getString(5).trim();
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
								
								out.println("<td><a href='deal_deleteWarn.jsp?passname=" + gatewayid
										+ "'>删除</a></td>");

								out.println("</tr>");
							}

							/*   关闭jbbc对象    */
							rs.close();
							st.close();
							conn.close();
						%>
					</tbody>
				</table>
				<p align="center"><a href="menu.jsp">返回主界面</a></p>		
	</table>
</body>
</html>