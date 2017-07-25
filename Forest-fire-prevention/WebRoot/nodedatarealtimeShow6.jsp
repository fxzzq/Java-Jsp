<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>节点实时数据展示</title>
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
			<td width="28" valign="middle">&nbsp;<img  src="images/jiantou.jpg" width="15" height="17" />
			</td>
			<td width="960" valign="middle"><span class="STYLE1">当前位置：</span>节点数据实时展示</td>
		</tr>
		<tr>
			<td height="4" colspan="2" bgcolor="afdf69"></td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
						<table align="center" border="1" bgcolor="#E6E6FA">
					<thead>
						<tr>
							<th align="center">序号</th>
							<th align="center">区域名称</th>
							<th align="center">温度</th>
							<th align="center">单位</th>
							<th align="center">相对湿度</th>
							<th align="center">单位</th>
							<th align="center">火焰</th>
							<th align="center">单位</th>
							<th align="center">可燃气体含量</th>
							<th align="center">单位</th>
						</tr>
					</thead>
					<tbody>
					<!-- 读取收集的数据 -->
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
							
							int number;
							for(number=1;number<=6;number++){
							String querySQL = "select * from collectdata where collectid='"+number+"' ";
							System.out.println(querySQL);
							st.executeQuery(querySQL);
							/* 处理结果集 */
							ResultSet rs = st.executeQuery(querySQL);

							int collectid;
							String collectname;
							String collecttemp;
							String collecthumi;
							String collectflame; 
							String collectgas;
							//将查询结果集中的记录输出到页面上  
							while (rs.next()) {
								//从当前记录中读取各字段的值    
								collectid = rs.getInt(1);
								collectname = rs.getString(2).trim(); //.trim()去除空格
								collecttemp = rs.getString(3).trim();
								collecthumi=rs.getString(4).trim();
								collectflame=rs.getString(5).trim();
								collectgas=rs.getString(6).trim();
								out.println("<tr>");
								
								out.println("<td>");
								out.println(collectid);
								out.println("</td>");
								
								out.println("<td>");
								out.println(collectname);
								out.println("</td>");
								
								out.println("<td>");
								out.println(collecttemp);
								out.println("</td>");
								
								out.println("<td>");
								out.println("℃");
								out.println("</td>");
								
								out.println("<td>");
								out.println(collecthumi);
								out.println("</td>");
								
								out.println("<td>");
								out.println("%RH");
								out.println("</td>");
								
								out.println("<td>");
								out.println(collectflame);
								out.println("</td>");
								
								out.println("<td>");
								out.println("mA");
								out.println("</td>");
								
								out.println("<td>");
								out.println(collectgas);
								out.println("</td>");
								
								out.println("<td>");
								out.println("%");
								out.println("</td>");

								out.println("</tr>");
							
							
								
							}
						
				}
					response.setHeader("refresh", "3;url=nodedatarealtimeShow7.jsp");
				
							/*   关闭jbbc对象    */
							//rs.close();
							st.close();
							conn.close();
						%>
					</tbody>
				</table>
				<p align="center"><a href="menu.jsp">返回主界面</a></p>
				</td>
		</tr>
	</table>
</body>
</html>
