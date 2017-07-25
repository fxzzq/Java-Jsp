<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新用户注册</title>
</head>
<body>
	<table border="0" align="center" cellpadding="0" cellspacing="0" width="955">
			<tr>
				<td colspan="2" background="images/topNo.jpg" height="243">&nbsp;</td>
			</tr>
			<tr>
				<td height="24" colspan="2">&nbsp;</td>
			</tr>
			<tr>
			<td width="27" valign="middle">&nbsp;<img src="images/jiantou.jpg" width="15" height="17" /></td>
		    <td width="928" valign="middle"><span class="STYLE1">当前位置：</span>新用户注册</td>
			</tr>
			<tr>
				<td height="24" colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td  colspan="2" height="200">
		<form action="doregister.jsp" " method="post">
		<!-- onsubmit="return checkInput() -->
			<table width="600" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c2d3b0">
				<tr>
					<td height="24" colspan="3" align="center" bgcolor="#FFFFFF" class="STYLE1">${error}</td>
				</tr>
				<tr>
					<td width="110" bgcolor="#FFFFFF" class="td0">请输入用户名：</td>
					<td width="266" bgcolor="#FFFFFF">&nbsp;&nbsp;<input type="text" name="username"></td>
					<td width="220" bgcolor="#FFFFFF" class="STYLE2">&nbsp;系统登录帐号6-10位英文字符或数字</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="td0">请输入密码：</td>
					<td bgcolor="#FFFFFF">&nbsp;&nbsp;<input type="password" name="password"></td>
					<td bgcolor="#FFFFFF" class="STYLE2">&nbsp;登录密码6-10位英文字符或数字</td>
				</tr>
				<tr>
					<td height="24" colspan="3" align="center" bgcolor="#FFFFFF">
						<input type="submit" value="提交"/>
						&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/>
					</td>
				</tr>
		  </table>
		</form>
				</td>
			</tr>
			<tr>
				<td  colspan="2" background="images/bottomM.gif" height="87">&nbsp;</td>
			</tr>
		</table>
</body>
</html>