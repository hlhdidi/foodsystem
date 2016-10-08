<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>无线点餐平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath }/sys/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/sys/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath }/sys/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/sys/style/css/index_1.css" />
	
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${pageContext.request.contextPath }/sys/style/images/title_arrow.gif" /> 餐厅订单列表
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>订单编号</td>
					<td>餐桌名</td>
					<td>下单日期</td>
					<td>总金额</td>
					<td>状态</td>
					<td>操作</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
					<c:forEach items="${orders }" var="o">
			 		<tr height="60">
				 		<td>${o.orderNum }</td>
				 		<td>${o.dinnerTable.tableName }</td>
				 		<td><fmt:formatDate value="${o.orderTime }" pattern="yyyy年MM月dd日 HH:mm:ss" ></fmt:formatDate></td>
				 		<td>${o.totalMoney }</td>
				 				<td>
				 				<c:if test="${o.orderStatus==0 }">
				 				未结账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 				</c:if>
				 				<c:if test="${o.orderStatus==1 }">
				 				已付款&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 				</c:if>
				 				</td>
				 		<td>
							<a href="${pageContext.request.contextPath }/sys/ManagerServlet?op=showOrderItemUI&id=${o.id}" class="FunctionButton">详细</a> 
				 				<a href="${pageContext.request.contextPath }/sys/ManagerServlet?op=changeOrder&id=${o.id}" class="FunctionButton">结账</a>
				 		</td>
			 		</tr>
					</c:forEach>
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
		</div>
	</div>
</body>
</html>
