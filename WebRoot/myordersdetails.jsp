<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>

<html>
<head>
<title>我的订单明细</title>
<!-- 
		<link rel="stylesheet" type="text/css" href="CSS/styles.css">
		 -->
<link rel="stylesheet" href="/Restraunt/css/styles.css" type="text/css" />
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

				<div style="background-image:url(images/004.gif)">&nbsp;</div> <br />
				<img src="images/icon_order.gif" align="top" /> 订单明细 <br />
				<hr />
				<table align="center" width="95%" cellspacing="0" cellpadding="3"
					style="text-align:center; border:1px #cccccc solid;">
					<tr style="background-color:#CCCCFF;">
						<td>明细编号</td>
						<td>菜名</td>
						<td>价格</td>
						<td>数量</td>
						<td>总额</td>
					</tr>
					<s:set var="count" value="0" />
					<s:iterator id="ordersDtsItem" value="#request.ordersDtsList">
						<tr style="background-color:#FFFFFF;">
							<td><s:property value="odid" /></td>
							<td><s:property value="meal.mealName" /></td>
							<td><s:property value="mealPrice" /></td>
							<td><s:property value="mealCount" /></td>
							<td><s:property value="mealPrice*mealCount" /></td>
						</tr>
						<s:set var="count" value="#count+mealPrice*mealCount" />
					</s:iterator>
					<tr style="background-color:#CCCCFF;">
						<td>合计</td>
						<td>-</td>
						<td>-</td>

						<td>-</td>
						<td>￥：<s:property value="#count" />
						</td>

					</tr>
				</table> <br /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><br>
				<hr width=100%> <br> <br></td>
		</tr>
	</table>
	<footer class="footer" id="footer">
		© 2017-2018 <a href="http://www.enola.me">enola.me</a> — All Rights
		Reserved. 闽ICP备15000433号
	</footer>
</body>
</html>
