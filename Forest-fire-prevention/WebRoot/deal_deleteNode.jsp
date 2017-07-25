<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- 解决插入数据库中文论码 -->
<%request.setCharacterEncoding("utf-8");%>  
<html>
  <head> 
    <title>处理删除节点</title>
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
		//passname是从deleteNode.jsp传过来的。
		String passname = (String) request.getParameter("passname");
		String delSQL = "delete from node where nodeid='" + passname+ "'";
		System.out.println(delSQL);
		stmt.executeUpdate(delSQL);
		out.println("删除节点成功!" + passname);
		response.setHeader("Refresh", "1;url=deleteNode.jsp");
	
		stmt.close(); 
		conn.close();
	 %>
  </body>
</html>
