<%@page import="bean.ProductDTO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%
		String id = request.getParameter("id");
		ProductDAO dao = new ProductDAO();
		ProductDTO dto = dao.one(id);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/project.css">

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function() {
	$('input').click(function() {
		$.ajax({
			url : "basket.jsp",
			data : {
				id : '<%= dto.getId()%>',
				// id : 100,
				name : '<%= dto.getName()%>',
				// name : 'food1', << 변수가 아닌 값이라고 판단을 하게함
				price : '<%= dto.getPrice()%>'
				//price : 1000
			},
			success : function() {
				alert("basket.jsp 연결성공")
			}

		})
	})
})
</script>

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

<table>
	<tr>
		<td>아이디</td>
		<td><%= dto.getId() %></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><%= dto.getName() %></td>
	</tr>
	<tr>
		<td>상품설명</td>
		<td><%= dto.getContent() %></td>
	</tr>
	<tr>
		<td>제조사</td>
		<td><%= dto.getCompany() %></td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><%= dto.getPrice() %></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td><img alt="" src="img/<%= dto.getImg() %>" width=150 height="150"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="image" src="img/bag.png" width=150 height="150">
		</td>
	</tr>
</table>
</div>

</body>
</html>