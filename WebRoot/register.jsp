<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<html>
<head>
<title>用户注册页面</title>
<link rel="stylesheet" href="/Restraunt/css/styles.css" type="text/css" />
<script type="text/javascript" src="js/check.js"></script>
</head>

<body style="background-color:#FCFCF2">
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
			<td valign="top" align="center">
				<p>
					<img src="images/left_top.jpg" width="215" height="100" /> <br>
					<img src="images/003.gif" width="191" height="8">
			</td>
			<td valign="top" width="80%"><img src="images/001.jpg"
				width="100%" height="72" /> <br />

				<div style="background-image:url(images/004.gif)">&nbsp;</div>
				<form action="register" method="post" name="frm"
					onsubmit="return check();">
					<table width="100%" cellspacing="0" cellpadding="3" align="center"
						style="text-align:center; border:1px #cccccc solid;">
						<tr style="background-color:#CCCCFF;">
							<td colspan="2">填写注册信息</td>
						</tr>
						<tr>
							<td align="right" style="width:320px;"><span
								style="color:red">*</span>用户昵称：</td>
							<td align="left"><input type="text" name="user.loginName"
								id="loginName" style="width:220px;" /> <span id="loginNameInfo"
								style="color: red"></span></td>
						</tr>
						<tr>
							<td align="right" style="width:320px;"><span
								style="color:red">*</span>用户密码：</td>
							<td align="left"><input type="password" name="user.loginPwd"
								id="loginPwd" style="width:220px;" /> <span id="loginPwdInfo"
								style="color: red"></span></td>
						</tr>
						<tr>
							<td align="right" style="width:320px;"><span
								style="color:red">*</span>真实姓名：</td>
							<td align="left"><input type="text" name="user.trueName"
								id="trueName" style="width:220px;" /> <span id="trueNameInfo"
								style="color: red"></span></td>
						</tr>
						<tr>
							<td align="right" style="width:320px;"><span
								style="color:red">*</span>电话号码：</td>
							<td align="left"><input type="text" name="user.phone"
								id="phone" style="width:220px;" /> <span id="phoneInfo"
								style="color: red"></span></td>
						</tr>
						<tr>
							<td align="right" style="width:320px;"><span
								style="color:red">*</span>电子邮件：</td>
							<td align="left"><input type="text" name="user.email"
								id="email" style="width:220px;" /> <span id="emailInfo"
								style="color: red"></span></td>
						</tr>
						<tr>
							<td align="right" style="width:320px;"><span
								style="color:red">*</span>默认地址：</td>
							<td align="left"><input type="text" name="user.address"
								id="address" style="width:220px;" /> <span id="addressInfo"
								style="color: red"></span></td>
						</tr>
						<tr style="background-color:#CCCCFF;">
							<td colspan="2"><input name="register" type="submit"
								id="register" value="注册" /></td>
						</tr>
					</table>
				</form>
				</div></td>
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
