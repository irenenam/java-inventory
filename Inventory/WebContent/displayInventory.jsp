<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="inventory.*" %>
<!--3. Directives -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inventory Status</title>
</head>
<body>
<!--3. Directives -->
<!-- inside of user.jsp there is login username and logout button -->
<%@include file="user.jsp"%>
<h1>McGill Bookstore Inventory Status</h1>
<!-- 5. EL tags, 6. JSTL tags -->
<c:if test="${!empty errorMsg}">
	<font color="red">
		<strong>${errorMsg}</strong>
	</font>
</c:if>
	<h2>Books</h2>
	<table border="1">
		<tr>
			<th>UID</th>
			<th>QTY</th>
			<th>Price</th>
			<th>Author</th>
		</tr>
<!-- 4. Declarations -->
<%!
	List<InventoryEntry> bookList;
%>
<%
	bookList = (ArrayList)request.getAttribute("bookList");
	for(InventoryEntry ie : bookList) {
%>
		<!-- 2. Expression -->
		<tr>
			<td><%=ie.getID() %></td>
			<td><%=ie.getQuantity() %></td>
			<td><%=ie.getPrice() %></td>
			<td><%=ie.getAuthor() %></td>
		</tr>
<%
	}
%>
	</table>
	<h2>CompactDiscs</h2>
	<!-- 5. EL tags, 6. JSTL tags -->
	<c:if test="${compactDiscList != null && compactDiscList.size() > 0 }">
		<table border="1">
			<c:forEach var="product" items="${compactDiscList}" varStatus="status">
				<c:choose>
					<c:when test="${status.count == 1 }">
						<tr>
							<th>UID</th>
							<th>QTY</th>
							<th>Price</th>
							<th>Artist</th>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td>${product.getID()}</td>
							<td>${product.getQuantity()}</td>
							<td>${product.getPrice()}</td>
							<td>${product.getArtist()}</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</table>
	</c:if>
	<!-- 1. Scriptlets -->
	<p><%out.println("Back to the <a href='form.jsp'>form </a>");%></a>
	first
	<c:set var="item" value="2" />
	<c:if test="${var == 1 }" var="result" scope="session">
	1111
		<c:out value="${result }" />
	</c:if>
</body>
</html>