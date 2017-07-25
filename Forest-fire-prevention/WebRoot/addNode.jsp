<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!-- session控制 只有登录才能访问 -->
<%
	String login = (String) request.getSession().getAttribute(
			"loginname");
	if (login!=null) {
	} else {
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="images/css.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>节点添加</title>
				<!-- 时间javaSript -->
 <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js">
 </script>
</head>
<body>
<h1 align="center">森林防火系统</h1>
<table width="90%" align="center" cellspacing="0">
		<tr>
			<td height="20" colspan="4">&nbsp;</td>
		</tr>
		<tr>
			<td width="25" valign="middle">&nbsp;<img src="images/jiantou.jpg" width="15" height="17" /></td>
		    <td colspan="3" valign="middle"><span class="STYLE1"> 当前位置：</span>节点添加</td>
		</tr>
		<tr>
			<td height="20" colspan="4">&nbsp;</td>
		</tr>
		<tr>
			<td height="20">&nbsp;</td>
			<td width="65" height="20">&nbsp;</td>
			<td width="663" height="20">
	<form action="deal_addNode.jsp" method="post">
		<table cellspacing="1" bgcolor="#c2d3b0">
			<tr>
				<td bgcolor="#FFFFFF" class="td0">输入节点名称：</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;
				<input type="text" name="nodename" size="25" maxlength="30"></td>
			</tr>
			<tr>
				
				<td bgcolor="#FFFFFF" class="td0">输入布置时间：</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;
				<input name="createdatetimeStart" style="width: 190px;" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
			</td>
			</tr>
			
			<tr>
				<td bgcolor="#FFFFFF" class="td0">输入节点对应的网关：</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;
				<input type="text" name="gatename" size="25" maxlength="30"></td>
			</tr>
			
			<tr>
				<td bgcolor="#FFFFFF" class="td0">输入采集的区域：</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;
				<input type="text" name="collectname" size="25" maxlength="30"></td>
			</tr>
			
			<tr>
				<td height="24" colspan="3" align="center" bgcolor="#FFFFFF">
					<input type="submit" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/>
			  </td>
			</tr>
			<tr>
			<td>
			<a href="menu.jsp">返回主界面</a>&nbsp;&nbsp;&nbsp;
			<a   href="Nodelist.jsp"><p align="left">显示节点列表</p></a>
			</td>
			</tr>
	  </table>
	</form>
		  </td>
			<td width="192" height="20">&nbsp;</td>
		</tr>
	</table>
	<br>

</body>
</html>