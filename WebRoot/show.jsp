<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>餐品列表显示</title>
<link rel="stylesheet" href="/Restraunt/css/styles.css" type="text/css" />
</head>

<body style="background-color:#FCFCF2">
	<table width="95%" height="170" border="0" cellpadding="0"
		cellspacing="0" align="center">
		<tr>
			<td width="350" height="171"><img src="images/top_logo.jpg"
				width="179" height="170" /> </td>
			<td width="490" style="padding-left: 40px;">
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
					<!-- 菜系循环开始 -->
					<s:iterator id="mealSeries" value="#request.mealSeriesList">
						<br>
						<a
							href="/Restraunt/toShowMeal?meal.mealseries.seriesId=${mealSeries.seriesId}">${mealSeries.seriesName }</a>
						<br>
					</s:iterator>
					<!-- 菜系循环结束 -->
			</td>
			<td valign="top" width="80%"><img src="images/001.jpg"
				width="100%" height="72" /> <br />
				<div align="left">
					<s:form theme="simple" method="post" action="toShowMeal">
						<s:label value="输入菜名：" />
						<s:textfield name="meal.mealName" />
						<!-- 通过隐藏表单域保存用户选择过的菜系编号，可根据餐品名称和菜系组合查询 -->
						<s:hidden name="meal.mealseries.seriesId"
							value="%{#request.seriesId}" />
						<s:submit value="查询" />
					</s:form>
				</div> <br />
				<div style="background-image: url(images/004.gif)">&nbsp;</div>
				<div style="background-color: #FFCC99;" align="right">
					<a href="shopCart.jsp"><img src="images/lcart_cn.gif"
						width="97" height="30" border="0" /> </a>
				</div> <br />
				<table cellpadding="5" cellspacing="1" style="font-size: 12px;">
					<!-- 餐品循环开始 -->
					<s:iterator id="mealItem" value="#request.mealList" status="st">
						<s:if test="#st.getIndex()%3==0">
							<tr>
						</s:if>
						<td><a
							href="/Restraunt/toShowDetails?meal.mealId=${mealItem.mealId}"><img
								src="mealimages/${mealItem.mealImage }" width="148" height="126"
								border="0" /> </a></td>
						<td>
							<div>
								${ mealItem.mealId} : ${ mealItem.mealName} <br /> <span
									style="text-decoration: line-through; color: gray;">原价：人民币${ mealItem.mealPrice}元</span>
								<br /> 现价：人民币 ${ mealItem.mealPrice*0.9} 元
							</div> <a
							href="/Restraunt/toShowDetails?meal.mealId=${mealItem.mealId}"><img
								src="images/detail_cn.gif" border="0" width="60" height="20" /></a>
							<a href="/Restraunt/addtoshopcart?mealId=${mealItem.mealId }"><img
								src="images/buy_cn.gif" border="0" width="60" height="20" /></a>
						</td>
						<s:if test="#st.getIndex()%3==2">
							</tr>
						</s:if>
					</s:iterator>
					<!-- 餐品循环开始 -->

					<!-- 分页超链接开始 -->
					<table align="right">
						<tr>
							<td width="130"></td>
							<td width="80"><s:if test="pager.curPage>1">
									<a
										href='/Restraunt/toShowMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>首页</a>&nbsp;&nbsp;
									<a
										href='/Restraunt/toShowMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>上一页</a>
								</s:if></td>
							<td width="80"><s:if test="pager.curPage < pager.pageCount">
									<a
										href='/Restraunt/toShowMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>下一页</a>&nbsp;&nbsp;
									<a
										href='/Restraunt/toShowMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>尾页</a>
								</s:if></td>
							<td>共${pager.rowCount}记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;

							</td>
						</tr>
					</table>
					<!-- 分页超链接结束-->

				</table></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><br>
				<hr width=100%> <br></td>
		</tr>
	</table>
	<footer class="footer" id="footer"> © 2017-2018 <a
		href="http://www.enola.me">enola.me</a> — All Rights Reserved.
	闽ICP备15000433号 </footer>
</body>
</html>
