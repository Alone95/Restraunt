<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>添加餐品</title>
<link rel="stylesheet" href="/Restraunt/css/styles.css" type="text/css" />
</head>

<body style="background-color: #FCFCF2">
	<table width="90%" height="170" border="0" cellpadding="0"
		cellspacing="0" align="center">
		<tr>
			<td width="350" height="171"><img src="images/top_logo.jpg"
				width="179" height="170" /> </td>
			<td width="490" style="padding-left: 40px;"></td>
		</tr>
		<tr>
			<td height="41" colspan="2"
				style="background-image: url(images/001.gif);" align="center">
				| <a href="/Restraunt/toShowMeal">网站首页</a> | <s:if
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
				width="595" height="72" /> <br />
				<div style="background-image: url(images/004.gif)">&nbsp;</div>
				<div style="background-color: #FFCC99;" align="center">添加餐品</div> <br />
				<s:form action="doAddMeal" method="post"
					enctype="multipart/form-data">
					<table align="center">
						<s:textfield name="meal.mealName" label="菜名" />
						<s:select name="meal.mealseries.seriesId" label="菜系" headerKey="0"
							headerValue="--请选择--" list="#request.mealSeriesList"
							listKey="seriesId" listValue="seriesName" />
						<s:textfield name="meal.mealSummarize" label="摘要" />
						<s:textfield name="meal.mealDescription" label="介绍" />
						<s:textfield name="meal.mealPrice" label="价格" />
						<s:file name="doc" label="图片" />
						<s:submit value="确定" align="center" />
					</table>
				</s:form></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><br> <br> <br> <br>
				<hr width=100%> <br></td>
		</tr>
	</table>
	<footer class="footer" id="footer"> © 2017-2018 <a
		href="http://www.enola.me">enola.me</a> — All Rights Reserved.
	闽ICP备15000433号 </footer>
</body>
</html>
