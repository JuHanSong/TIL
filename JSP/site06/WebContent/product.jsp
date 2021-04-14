<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/project.css">
<title>Insert title here</title>
</head>
<body>
<div id ="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
		
	</div>

	<% if(session.getAttribute("id") != null) { %>
	<%= session.getAttribute("id") %> 님이 로그인 했습니다.<br>
			
	<% }else{ %>
		손님 환영합니다.
	<% } %>
	
	상품과 관련된 페이지
	<hr color="red">
	<%
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list = dao.list();
		// cntl + shift + m = 자동import
	%>
	현재 사이트에 등록된 상품은 <%= list.size() %>개 상품이 존재합니다.
	<table>
	<tr>
		<td>상품명</td>
		<td>상품가격</td>
		<td>상품사진</td>
	</tr>
	<% for(ProductDTO dto : list){ %>
		<tr>
			<td>
			<a href="one.jsp?id=<%= dto.getId()%>"><%= dto.getName()%></a>
			</td>
			<td><%= dto.getPrice()%></td>
			<td><img alt="" src="img/<%= dto.getImg() %>" width=150 height="150"></td>
		</tr>
	<% } %>
	</table>
</div>
</body>
</html>