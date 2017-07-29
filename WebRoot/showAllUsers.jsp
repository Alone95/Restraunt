<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>

<html>
<head>
<title>查看所有用户</title>
<link rel="stylesheet" href="/Restraunt/css/styles.css" type="text/css" />
</head>

<body style="background-color:#FCFCF2">
	<table width="90%" height="629" border="0" cellpadding="0"
		cellspacing="0" align="center">
		<tr>
			<td width="350" height="171"><img src="images/top_logo.jpg"
				width="179" height="170" /></td>
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
				<div align="left">
					
				</div>

				<div style="background-image:url(images/004.gif)">&nbsp;</div> <br />
				<img src="images/icon_order.gif" align="top" /> 用户列表 <br />
				<hr />
				<table align="center" width="95%" cellspacing="0" cellpadding="3"
					style="text-align:center; border:1px #cccccc solid;">
					<tr style="background-color:#CCCCFF;">
						<td>用户编号</td>
						<td>用户名称</td>
						<td>用户姓名</td>
						<td>电子邮箱</td>
						<td>手机号</td>
						<td>详细地址</td>
					</tr>
					<s:set var="total" value="0" />
					<s:iterator id="user" value="#request.userslist">
						<tr style="background-color:#FFFFFF;">
							<td><s:property value="id" /></td>
							<td><s:property value="loginName" /></td>

							<td><s:property value="trueName" /></td>
							<td><s:property value="email" /></td>
							<td><s:property value="phone" /></td>
							<td><s:property value="address" /></td>
						</tr>
					</s:iterator>

					<table align="right">
						<tr>
							<td width="130"></td>
							<td width="80"><s:if test="pager.curPage>1">
									<a href='/Restraunt/getAllUsers?pager.curPage=1'>首页</a>&nbsp;&nbsp;
									<a
										href='/Restraunt/getAllUsers?pager.curPage=${pager.curPage-1 }'>上一页</a>
								</s:if></td>
							<td width="80"><s:if test="pager.curPage < pager.pageCount">
									<a
										href='/Restraunt/getAllUsers?pager.curPage=${pager.curPage+1}'>下一页</a>&nbsp;&nbsp;
									<a
										href='/Restraunt/getAllUsers?pager.curPage=${pager.pageCount}'>尾页</a>
								</s:if></td>
							<td>共${pager.rowCount}记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;

							</td>
						</tr>
					</table>


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
