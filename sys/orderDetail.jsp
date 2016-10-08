<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- åå«å¬å±çJSPä»£ç çæ®µ -->
	
<title>订单菜品列表</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath }/sys/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/sys/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath }/sys/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/sys/style/css/index_1.css" />
</head>
<body>
	<!-- é¡µé¢æ é¢ -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${pageContext.request.contextPath }/sys/style/css/images/title_arrow.gif" /> 订单菜品列表
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	<!-- 菜名,单价,数量 -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- è¡¨å¤´-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>菜名</td>
					<td>单价</td>
					<td>数量</td>
				</tr>
			</thead>
			<!--æ¾ç¤ºæ°æ®åè¡¨ -->
			<tbody id="TableData">
					<c:if test="${not empty order.items }">
					<c:forEach items="${order.items}" var="i">
			 		<tr height="60">
				 		<td>${i.food.name }</td>
				 		<td>${i.food.price }</td>
				 		<td>${ i.amount}</td>
			 		</tr>
					</c:forEach>
					</c:if>
					<c:if test="${! not empty order.items }">
						<tr height="60">
				 		<td colspan="3">没有食物!</td>
			 			</tr>
					</c:if>
			</tbody>
		</table>
		<!-- å¶ä»åè½è¶é¾æ¥ -->
		<div id="TableTail" align="center">
			 <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
		</div>
	</div>
</body>
</html>
