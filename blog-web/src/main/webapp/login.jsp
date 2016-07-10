<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style type="text/css">
.box.login {
	height: 260px;
	width: 332px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin: -130px 0 0 -166px;
	border: 1px solid #C0C0C0;
}

.auto_login_font {
	font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-size: small;
}
</style>
</head>

<body>
	<div id="loginDiv" class="box login">
		<table width="100%" height="100%">
			<tr>
				<td align="center" valign="top">
					<form action="/blog-web/account/login">
						<table align="center">
							<tr>
								<td colspan="2" align="center" height="80"><span>登&nbsp;&nbsp;录</span></td>
							</tr>
							<tr>
								<td>用户名：</td>
								<td><input type="text" name="username" /></td>
							</tr>
							<tr>
								<td>密码：</td>
								<td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<td></td>
								<td align="left"><input type="checkbox" name="rememberMe"/><span
									class="auto_login_font">记住我</span></td>
							</tr>
							<tr>
								<td></td>
								<td align="left"><input type="submit"
									value="登&nbsp;&nbsp;录" /></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>