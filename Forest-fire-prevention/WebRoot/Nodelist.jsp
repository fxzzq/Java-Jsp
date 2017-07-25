<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>节点列表</title>
</head>
<body>
<table width="845" cellspacing="0" align="center">
  <tr>
    <td height="124" colspan="2" background="images/topU.gif">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top">
			<table cellspacing="0" width="600px" align="center">
			<tr>
				<td height="20" colspan="2"></td>
			</tr>
			<tr>
				<td width="14" background="images/jiantou.jpg">&nbsp;</td>
				<td width="585"><span class="STYLE2">当前位置：</span>节点列表  &nbsp;&nbsp;&nbsp;&nbsp;
				<b><strong><big>森林防火系统（管理员）</big></strong></b></td>
			</tr>
			<tr>
				<td height="8" colspan="2"></td>
			</tr>
			<tr>
				<td height="3" colspan="2" bgcolor="#b1de69"></td>
			</tr>
			<tr>
				<td height="20" colspan="2"></td>
			</tr>
		</table>
    	<!-- <form action="deal_deleteNode.jsp" method="post"> -->
    	<table align="center" border="1" bgcolor="#E6E6FA">
					<thead>
						<tr>
							<th align="center">节点编号</th>
							<th align="center">节点名称</th>
							<th align="center">布置时间</th>
							<th align="center">节点对应网关</th>
							<th align="center">节点采集区域</th>
							<!-- <th align="center">操作</th> -->
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
							String querySQL = "select * from node ";
							System.out.println(querySQL);
							st.executeQuery(querySQL);
							/* 处理结果集 */
							ResultSet rs = st.executeQuery("select * from node");

							String passname;//传到deal_deleteNode.jsp
							int nodeid;
							String nodename;
							String nodeassigndatetime;
							String gatename;
							String collectname;
							//将查询结果集中的记录输出到页面上  
							while (rs.next()) {
								//从当前记录中读取各字段的值    
								nodeid = rs.getInt(1);
								nodename = rs.getString(2).trim(); //.trim()去除空格
								nodeassigndatetime = rs.getString(3).trim();
								gatename=rs.getString(4).trim();
								collectname=rs.getString(5).trim();
								out.println("<tr>");
								
								out.println("<td>");
								out.println(nodeid);
								out.println("</td>");
								
								out.println("<td>");
								out.println(nodename);
								out.println("</td>");
								
								out.println("<td>");
								out.println(nodeassigndatetime);
								out.println("</td>");
								
								out.println("<td>");
								out.println(gatename);
								out.println("</td>");
								
								out.println("<td>");
								out.println(collectname);
								out.println("</td>");
							    
								/* out.println("<td><a href='deal_deleteNode.jsp?passname=" +nodeid
										+ "'>删除</a></td>"); */
								
								out.println("</tr>");
							}

							/*   关闭jbbc对象    */
							rs.close();
							st.close();
							conn.close();
						%>
              </tbody>
		</table>
		
		<!-- </form> -->
	</td>
  </tr>
  <!-- <tr>
  	<td height="85" colspan="2" align="center" background="images/bottomU.gif">&nbsp;</td>
  	
  </tr> -->
  <tr>
  <td>
	<a href="menu.jsp"><p align="center">返回主界面</p></a>
</td>
</tr>
</table>
</body>
</html>