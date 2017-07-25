<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 显示用户列表页面只能管理员用户登录后才能访问。 -->
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
<title>用户列表</title>
</head>
<body>
	<div id="wrap">
		<div class="container">
		<table>
		<tr>
		<td width="14" background="images/jiantou.jpg">&nbsp;</td>
				<td width="585"><span class="STYLE2">当前位置：</span>用户列表 &nbsp;&nbsp;&nbsp;&nbsp;
				<b><strong><big>森林防火系统（管理员）</big></strong></b></td>
		</tr>
		</table>
			<!-- <div class="page-header">
				<h1 align="center">用户列表</h1>
			</div> -->
			<div class="table-responsive">
				<!-- <table class="table table-striped"  > -->
				<table align="center" border="1" bgcolor="#E6E6FA">
					<thead>
						<tr>
							<th align="center">序号</th>
							<th align="center">用户名</th>
							<th align="center">密码</th>
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
							String querySQL = "select * from users ";
							System.out.println(querySQL);
							st.executeQuery(querySQL);
							/* 处理结果集 */
							ResultSet rs = st.executeQuery("select * from users");

							String passname;//传到deleteuser.jsp
							int id;
							String name;
							String pwd;
							//将查询结果集中的记录输出到页面上  
							while (rs.next()) {
								//从当前记录中读取各字段的值    
								id = rs.getInt(1);
								name = rs.getString(2).trim(); //.trim()去除空格
								pwd = rs.getString(3).trim();

								out.println("<tr>");
								out.println("<td>");
								out.println(id);
								out.println("</td>");
								out.println("<td>");
								out.println(name);
								out.println("</td>");
								out.println("<td>");
								out.println(pwd);
								out.println("</td>");
								
							
								out.println("<td><a href='deleteuser.jsp?passname=" + name
										+ "'>删除</a></td>");
								
								out.println("</tr>");
							}

							/*   关闭jbbc对象    */
							rs.close();
							st.close();
							conn.close();
						%>
						
					</tbody>
					<th align="center"><a href='menu.jsp'>返回上一页面</a></th>
				</table>
				
			</div>
		</div>
	</div>
</body>
</html>