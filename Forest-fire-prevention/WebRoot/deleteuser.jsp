<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<html>
<head>
<title>删除用户</title>
</head>

<body>
	<%
		String driverClass = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://118.89.38.92:3306/forest-fire-prevention";
		String username = "xzq";
		String password = "123456";
		Class.forName(driverClass);
		Connection conn = DriverManager.getConnection(url, username,
				password);
		Statement stmt = conn.createStatement();
		//passname是从userlist.jsp传过来的。
		String passname = (String) request.getParameter("passname");
		String delSQL = "delete from users where username='" + passname
				+ "'";
		System.out.println(delSQL);
		stmt.executeUpdate(delSQL);
		out.println("删除成功!" + passname);
		response.setHeader("Refresh", "1;url=userlist.jsp");
	
		stmt.close(); 
		conn.close();
	 %>
</body>
</html>
