<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!-- 解决插入数据库中文论码 -->
<%request.setCharacterEncoding("utf-8");%>  
<html>
  <head> 
    <title>注册写入</title>
  </head>
  <body>
   <%
  String driverClass="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://118.89.38.92:3306/forest-fire-prevention?useUnicode=true&characterEncoding=UTF-8";
    String username="xzq";
    String password="123456";
    Class.forName(driverClass);
    Connection  conn=DriverManager.getConnection(url,username,password);
    Statement st = conn.createStatement();
	String uname=request.getParameter("username");
    String upwd=request.getParameter("password");
    Statement stmt=conn.createStatement();
    String insertSQL = "INSERT INTO users(username,password) Values ('"+uname+"', '"+upwd+"' )";
    System.out.println(insertSQL);
    st.executeUpdate(insertSQL);
	ResultSet rs = stmt.executeQuery("select * from users");
	out.println("<center><b><stong><big><h1>");
	out.println("注册成功 3秒后自动跳到登录页面");
	out.println("</h1></big></strong></b></center>");
	response.setHeader("refresh", "3;url=login.jsp");
	    
	rs.close();
	stmt.close();
	conn.close();
%>
  </body>
</html>
