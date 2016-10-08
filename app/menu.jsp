﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>无线点餐平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath }/app/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath }/app/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/app/style/css/index_1.css" />
	<link href="${pageContext.request.contextPath }/app/style/css/index.css" rel="stylesheet" type="text/css" />
</head>
<body style="text-align: center">
	<div id="all">
		<div id="menu">
			<!-- 显示菜品的div -->
			<div id="top">
				<ul>
					<!-- 循环列出餐品 -->
						<c:forEach items="${page.records}" var="f">
						
						<li>
							<dl>
								<dt>
									<a href="${pageContext.request.contextPath }/app/ClientServlet?op=foodDetail&id=${f.id}">
										<img width="214px" height="145px" src="${pageContext.request.contextPath }/${f.path}" />
									</a>
								</dt>
								<dd class="f1">
									<a href="${pageContext.request.contextPath }/app/ClientServlet?op=foodDetail&id=${f.id}">${f.name }</a>
								</dd>
								<dd class="f2">
									<a href="${pageContext.request.contextPath }/app/ClientServlet?op=foodDetail&id=${f.id}">&yen;${f.price }</a>
								</dd>
							</dl>
						</li>
						</c:forEach>
				</ul>
			</div>
			
			<!-- 底部分页导航条div -->
			<div id="foot">
						<span
							style="float:left; line-height:53PX; margin-left:-50px; font-weight:bold; ">
							<span style="font-weight:bold">&lt;&lt;</span>
						</span>
				<div id="btn">
					<ul>
							<c:forEach items="${pageNums }" var="n">
							<li><a
								href="${pageContext.request.contextPath }${page.url}&num=${n}">${n }</a></li>
							</c:forEach>
					</ul>
				</div>
						<span style="float:right; line-height:53px; margin-right:10px;  ">
							<a
							href="#"
							style=" text-decoration:none;color:#000000; font-weight:bold">&gt;&gt;</a>
						</span>
			</div>
		</div>
		<!-- 右边菜系列表，菜品搜索框  -->
		<div id="dish_class">
			<div id="dish_top">
				<ul>
				<li class="dish_num"></li>
					<li>
						<a href="clientOrderList.html">
							<img src="${pageContext.request.contextPath }/app/style/images/call2.gif" />
						</a>
					</li>
				</ul>
			</div>
			<div id="dish_2">
				<ul>
					<c:forEach items="${groups }" var="g">
						<li>
							<a href="${pageContext.request.contextPath }/app/ClientServlet?op=findFoodByGroup&id=${g.id}">${g.name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div id="dish_3">
				<!-- 搜索菜品表单  -->
				<form action="${pageContext.request.contextPath }/app/ClientServlet?op=selectFood" method="post">
					<table width="166px">
						<tr>
							<td>
								<input type="text" id="dish_name" name="foodName" class="select_value" /> 
							</td>
						</tr>
						<tr>
							<td><input type="submit" id="sub" value="" /></td>
						</tr>
						<tr>
							<td>
								<a href="${pageContext.request.contextPath }/app/ClientServlet?op=showMenu">
									<img src="${pageContext.request.contextPath }/app/style/images/look.gif" />
								</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
	</div>
</body>
</html>
