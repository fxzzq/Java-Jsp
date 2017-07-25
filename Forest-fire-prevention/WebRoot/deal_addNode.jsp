<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!-- 解决插入数据库中文论码 -->
<%request.setCharacterEncoding("utf-8");%>  
<html>
  <head> 
    <title>处理添加节点</title>
  </head>
  <body>
   <%
  String driverClass="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://118.89.38.92:3306/forest-fire-prevention?useUnicode=true&characterEncoding=UTF-8";
    String username="xzq";
    String password="123456";
    Class.forName(driverClass);
    Connection  conn=DriverManager.getConnection(url,username,password);
    /* 获取添加节点的名称 */
	String nodename=request.getParameter("nodename");
	/* 获取添加节点的日期 */
    String nodeassigndatetime = request.getParameter("createdatetimeStart") == null ? "": request.getParameter("createdatetimeStart").trim();
    
      /* 获取添加节点对应的网关 */
	String gatename=request.getParameter("gatename");
	  /* 获取添加节点采集的区域*/
	String collectname=request.getParameter("collectname");
	
    Statement stmt=conn.createStatement();
    String insertSQL = "INSERT INTO node(nodename,nodeassigndatetime,gatename,collectname) Values ('"+nodename+"', '"+nodeassigndatetime+"','"+gatename+"','"+collectname+"' )";
    System.out.println(insertSQL);
    stmt.executeUpdate(insertSQL);
	ResultSet rs = stmt.executeQuery("select * from node");
	out.println("<center><b><stong><big><h1>");
	out.println("添加节点成功 !");
	out.println("<td><a href='Nodelist.jsp'>显示节点列表</a></td>");
	
	out.println("</h1></big></strong></b></center>");
	//response.setHeader("refresh", "3;url=addNode.jsp");
	    
	rs.close();
	stmt.close();
	conn.close();
%>
  </body>
</html>
