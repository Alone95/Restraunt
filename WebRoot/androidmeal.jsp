<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detailNews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
body {
	color: #333333;
	font: 17px/ 150% "FZLanTingHei-R-GBK" !important;
	text-align: justify;
}

p {
	line-height: 150% !important;
	font: 17px/ 150% "FZLanTingHei-R-GBK" !important;
	text-align: justify;
}

p font {
	line-height: 150% !important;
	font: 17px/ 150% "FZLanTingHei-R-GBK" !important;
	text-align: justify;
}

.acontent p,.acontent font,.acontent * {
	font-size: 16px !important;
	font: 17px/ 150% "FZLanTingHei-R-GBK" !important;
	text-align: justify;
}
</style>
  </head>
  
  <body>
    <br><br>
    <div style="font-size: 17px; color: #353535;">
			<div style="width: 100%;">
				<div
					style="float: left; font-size: 22px; padding-top: 10px; padding-left: 10px; font-weight: bold">
					 ${androidh.mealName }	
				</div>
				<div style="clear: both; padding: 10px; color: #999">
					<div style="float: left; font-size: 12px;">
					 ${androidh.mealSummarize }		
					</div>
					<div
						style="clear: both; border-bottom: 1px solid #aaa; width: 100%; height: 2px; margin: auto; padding-top: 5px"></div>
				</div>
				
				<div style="clear: both; height: 10px"></div>

				<div style="font-size: 17px;" class="acontent">

					<div class="acontent" align="center">
					${androidh.mealDescription }	
					</div>
					<div
						style="float: right; font-size: 12px; clear: both; padding: 10px; color: #999">
						 ${androidh.mealPrice }	
					</div>
				</div>
			</div>
		</div>
    
  </body>
</html>
