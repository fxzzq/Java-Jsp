<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户登录</title>
	<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {color: #FF0000}
.STYLE3 {color: #FF0000; font-size: 9pt; }
.STYLE7 {font-size: 9pt}

	</style>
</head>
	<body>
		<form action="dologin.jsp" method="post">
		<br/><br/><br/>
			<h1 align="center"><font color="green">森林防火系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></h1>
			<table width="449" height="238" align="center" background="images/index.jpg">
				<tr>
					<td colspan="3" height="76" >&nbsp;</td>
				</tr>
				<tr class="STYLE1">
				  <td height="22" colspan="3" align="center"><span class="STYLE3">${error}</span></td>
			    </tr>
				<tr>
					<td width="59" height="23">&nbsp;</td>
					<td width="59"><span class="STYLE7">用户名：</span></td>
					<td width="319"><input type="text" name="username"></td>
				</tr>
				<tr>
					<td height="30">&nbsp;</td>
					<td><span class="STYLE7">密码：</span></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="3" class="STYLE7" align="center">
						<input type="submit" value="提交"/>
						<input type="reset" value="重置"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="register.jsp">新用户注册入口</a>
					</td>
					
					
					
				</tr>
				<tr>
					<td height="45" colspan="3">&nbsp;</td>
				</tr>
		  </table>
		</form>
	</body>
</html>