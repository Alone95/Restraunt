<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<html>
<head>
<title>登录页面</title>
<link rel="stylesheet" href="/Restraunt/css/styles.css" type="text/css" />
</head>
<body style="background-color:#FCFCF2 ">
	<table width="90%" height="629" border="0" cellpadding="0"
		cellspacing="0" align="center">
		<tr>
			<td width="350" height="171"><img src="images/top_logo.jpg"
				width="179" height="170" /> </td>
			<td width="490" style="padding-left: 40px;"></td>
		</tr>
		<tr>
			<td height="41" colspan="2"
				style="background-image:url(images/001.gif);" align="center">|
				<a href="/Restraunt/toShowMeal">网站首页</a> | <s:if
					test="(#session.admin==null) && (#session.user==null)">
					<a href="register.jsp">用户注册</a> |
					<a href="login.jsp?role=user">用户登录</a> |
					<a href="login.jsp?role=admin">管理员登录</a> |
					</s:if> <s:if test="#session.user!=null">
					<a href="modifyMyInfo.jsp">修改个人信息</a> |
					<a href="shopCart.jsp">我的购物车</a> |
					<a href="/Restraunt/toMyOrders">我的订单</a> |
					<a href="/Restraunt/logOut?type=userlogout">注销</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">欢迎您：${sessionScope.user.trueName }</font>
				</s:if> <s:if test="#session.admin!=null">
					<a href="/Restraunt/toAddMeal">添加餐品</a> |
					<a href="/Restraunt/toManageMeal">管理餐品</a> |
					<a href="/Restraunt/getAllUsers">查看用户</a> |
					<a href="/Restraunt/toManageOrders">订单处理</a> |
					<a href="/Restraunt/logOut?type=adminlogout">注销</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">欢迎您：${sessionScope.admin.loginName }</font>
				</s:if>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<p>
					<img src="images/left_top.jpg" width="215" height="100" />
			</td>
			<td valign="top" width="80%"><img src="images/001.jpg"
				width="100%" height="72" /> <br />

				<div style="background-image:url(images/004.gif)">&nbsp;</div>
				<div style="background-color:#FFCC99;" align="center">
					网上订餐系统用户请直接登录</div> <br> <br /> <s:if
					test="#parameters.role[0]=='user'">
					<form action="validateLogin?type=userlogin" method="post"
						name="ufrm">
						<table width="263" border="0" cellspacing="0" cellpadding="4"
							align="center">
							<tr>
								<td width="74">用户名：</td>
								<td width="189"><input type="text" name="loginName"
									style="width:150;" /></td>
							</tr>
							<tr>
								<td>密 &nbsp;&nbsp;码：</td>
								<td><input type="password" name="loginPwd"
									style="width:150;" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" name="login" value="登 录" /></td>
							</tr>
						</table>
					</form>
				</s:if> <s:if test="#parameters.role[0]=='admin'">
					<form action="validateLogin?type=adminlogin" method="post"
						name="afrm">
						<table width="263" border="0" cellspacing="0" cellpadding="4"
							align="center">
							<tr>
								<td width="74">登录名：</td>
								<td width="189"><input type="text" name="loginName"
									style="width:150;" /></td>
							</tr>
							<tr>
								<td>密 &nbsp;&nbsp;码：</td>
								<td><input type="password" name="loginPwd"
									style="width:150;" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" name="login" value="登 录" /></td>
							</tr>

							<tr>
								<td colspan="2"></td>
							</tr>

						</table>
					</form>
				</s:if></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><br>
				<hr width=100%></td>
		</tr>
	</table>
	<footer class="footer" id="footer">
		© 2017-2018 <a href="http://www.enola.me">enola.me</a> — All Rights
		Reserved. 闽ICP备15000433号
	</footer>

</body>
</html>
