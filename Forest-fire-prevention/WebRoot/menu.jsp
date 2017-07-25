<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!-- session控制 只有登录才能访问 -->
<%
	String login = (String) request.getSession().getAttribute(
			"loginname");
	if (login!=null) {
	} else {
		response.sendRedirect("login.jsp");
	}
%>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

<link href="images/menu.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div>
		<b> <big><strong><h1 align="left">
						森林防火系统&nbsp;&nbsp; 欢迎
						<%=request.getSession().getAttribute("loginname")%>&nbsp;!
						<% out.println("你来自IP:"+request.getRemoteAddr());%>
						</h1>
			</strong> </big> </b>
	</div>
	<br />
	<b>
	
	<!-- 静态显示时间 -->
	<%-- <%=new java.util.Date()%> --%>
	<!-- 动态显示时间 -->
	<%@include file="time.jsp" %>
	
	</b>
	<div class="box">
		<ul class="menu">
			<li class="level1"><a href="#none"></a>
			</li>
			
			<li class="level1"><a href="#none">拓扑管理</a>
				<ul class="level2">
					<li><a href="addNode.jsp">新增节点</a>
					</li>
					<li><a href="Nodelist.jsp">节点列表</a>
					</li>
					<li><a href="deleteNode.jsp">删除节点（管理员）</a>
					</li>
				</ul></li>
			<li class="level1"><a href="#none">资源管理</a>
				<ul class="level2">
					<li><a href="nodedataShow.jsp">节点数据展示</a>
					</li>
					<li><a href="nodedatarealtimeShow.jsp">数据实时展示</a>
					</li>
				</ul></li>
				
				
			<li class="level1"><a href="#none">告警管理</a>
				<ul class="level2">
					<li><a href="showWarn.jsp">告警监控</a>
					</li>
					<li><a href="statisticsWarn.jsp">告警统计</a>
					</li>
					<li><a href="deleteWarn.jsp">告警清除（管理员）</a>
					</li>
				</ul></li>
				<li class="level1"><a href="#none">性能管理</a>
				<ul class="level2">
					<li><a href="analysis.jsp">折线图分析</a>
					</li>
				</ul></li>
				<li class="level1"><a href="#none">信息发布</a>
				<ul class="level2">
					<li><a href="doWarnmenu.jsp">告警发布</a>
					</li>
				</ul></li>
				
			<li class="level1"><a href="#none">自身管理</a>
				<ul class="level2">
					<li><a href="register.jsp">用户注册</a>
					</li>
					<li><a href="userlist.jsp">用户删除（管理员）</a>
					</li>
				</ul></li>
		</ul>
	</div>

	<script type="text/javascript" src="js/menu.js"></script>
</body>
</html>
