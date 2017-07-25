<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<html>
<head>
<title>登录判断</title>
</head>
<body>
<%
  String driverClass="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://118.89.38.92:3306/forest-fire-prevention";
    String username="xzq";
    String password="123456";
    Class.forName(driverClass);
    Connection  conn=DriverManager.getConnection(url,username,password);
    Statement stmt=conn.createStatement();
	String uname=request.getParameter("username");
    String upwd=request.getParameter("password");
	ResultSet rs = stmt.executeQuery("select * from users");
	
	while(rs.next())
	{
        	if(uname.equals(rs.getString(2)) && (upwd.equals(rs.getString(3))))
        	{
        	request.getSession().setAttribute("loginname", uname);
        	//把用户名 存入session
        	request.getSession().setAttribute("loginpwd", upwd);
        	// 密码存入session
        	%>
        	<jsp:forward page="menu.jsp"></jsp:forward>
        	<%
        	}
    }

        	out.println("账号或密码错误");%>
        	<a href="login.jsp">重新登录</a>
        
    
   <%     	

	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>