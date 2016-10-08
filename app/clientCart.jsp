<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/app/style/css/index.css" />
	<script type="text/javascript">
		/** // 删除菜品项
		function removeSorder(node) {
			var gid = node.lang;
			window.location.href = "/wirelessplatform/sorder.html?method=removeSorder&gid="+gid;
		}
		
		
		function alterSorder(node) {
			var snumber = node.value;
			window.location.href = "/wirelessplatform/sorder.html?method=alterSorder&gid="+gid+"&snumber="+snumber;
		};
		*/
		// 下单
		function genernateOrder() {
			window.location.href = "clientOrderList.html";
		}
	</script>
</head>

<body style="text-align: center">
	<div id="all">
		<div id="menu">
			<!-- 餐车div -->
			<div id="count">
				<table align="center" width="100%">
					<tr height="40">
				 		<td align="center" width="20%">菜名</td>
				 		<td align="center" width="20%">单价</td>
				 		<td align="center" width="20%">数量</td>
				 		<td align="center" width="20%">小计</td>
				 		<td align="center" width="20%">操作</td>
				 	</tr>
				 	<c:forEach items="${order.items }" var="i">
					<tr height="60">
					 		<td align="center" width="20%">${i.food.name }</td>
					 		<td align="center" width="20%">${i.food.price }</td>
					 		<td align="center" width="20%">
					 			<input type="text" value="${i.amount }"  size="3" onblur="alterSorder(this)"/>
					 		</td>
					 		<td align="center" width="20%">${i.money}</td>
					 		<td align="center" width="20%">
					 			<a href="${pageContext.request.contextPath }/app/ClientServlet?op=deleteOrder&id=${i.id}"><input type="button" value="删除" class="btn_next"  /></a>
					 		</td>
				 	</tr>
				 	</c:forEach>

					<tr>
						<td colspan="6" align="right">总计:
							<span style="font-size:36px;">&yen;&nbsp;${order.totalMoney }</span>
							<label
								id="counter" style="font-size:36px"></label>
						</td>
					</tr>
					<tr>
						<td colspan="6" style="margin-left: 100px; text-align: center;"align="right">
							<input type="hidden" name="bId" value="">
									<a href="${pageContext.request.contextPath }/app/ClientServlet?op=saveOrder"><input type="button" value="下单" class="btn_next" onclick="genernateOrder()" /></a>
								
							
						</td>
					</tr>
				</table>
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
				<form action="#" method="post">
					<table width="166px">
						<tr>
							<td>
								<input type="text" id="dish_name" name="foodName" class="select_value" /> 
								<input type="hidden" value="selectFood" name="method">
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
