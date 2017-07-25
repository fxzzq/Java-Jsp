<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="images/css.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布轻度告警</title>
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
		
		//读取操作
		//passname是从doWarn.jsp传过来的。
		String passname = (String) request.getParameter("passname");
		
		String querySQL="select * from node where collectname='"+passname+"'";
		//String querySQL="select gatename from node where collectname='"+passname+"'";报错2>1
		System.out.println(querySQL);
		stmt.executeQuery(querySQL);
		ResultSet rs = stmt.executeQuery(querySQL);
		
		int nodeid;
		String nodename;
		String nodeassigndatetime;
		String gatename1="";
		String collectname;
		while (rs.next()) {
		
		nodeid=rs.getInt(1);
		nodename=rs.getString(2).trim(); //.trim()去除空格
		nodeassigndatetime=rs.getString(3).trim();
		gatename1=rs.getString(4).trim();
		collectname=rs.getString(5).trim();
		out.println("<center><b><stong><big><h1>");
		out.println("查询成功!" +gatename1 );
		out.println("</h1></big></strong></b></center>");
		}
		
		out.println("<br>");
		//插入操作
		String insertSQL = "insert into gateway(gatename,warnrank,warninfo,datetime,publishperson) values('"+ gatename1+"','轻度','温度过高','"+new java.util.Date()+"','"+request.getSession().getAttribute("loginname")+"')";
		System.out.println(insertSQL);
		stmt.executeUpdate(insertSQL);
		
		out.println("<center><b><stong><big><h1>");
		out.println("发布成功!");
		out.println("</h1></big></strong></b></center>");
		
		//response.setHeader("Refresh", "3;url=doWarnmenu.jsp");
	    rs.close();
		stmt.close(); 
		conn.close();
	 %>
	 <p align="center"><a href="menu.jsp">返回主界面</a></p><br>
	 <p align="center"><a href="statisticsWarn.jsp">查看发布的告警</a></p>

</body>
</html>