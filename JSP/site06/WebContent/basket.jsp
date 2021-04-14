<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.ProductDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    <!-- 장바구니 목록에 쌓아주기 -->
    <!-- DB를 사용하지 않고, 세션을 사용해서 장바구니 목록을 저장해두자. -->
    <!-- 세션은 서버의 램에 저장하는 방식. -->
	<%
		ArrayList<ProductDTO> basket =  null; 
		if(session.getAttribute("basket") == null){
	    	basket= new ArrayList<ProductDTO>();
		}else{
			basket = (ArrayList<ProductDTO>)session.getAttribute("basket");
		}
		if(dto.getId() != null){
		basket.add(dto);
		session.setAttribute("basket", basket);
		}
	%>
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
	장바구니과 관련된 페이지
	<hr>
	장바구니 등록한 숫자는 <%= basket.size() %> 개 입니다.
	<hr>
	<table>
		<tr>
			<td>물건ID</td>
			<td>물건Name</td>
			<td>물건Price</td>
			<td>물건 게수</td>
		</tr>
		
		<% for(ProductDTO dto2 :basket){ %>
		<tr>
			<td><%= dto2.getId()%></td>
			<td><%= dto2.getName()%></td>
			<td><%= dto2.getPrice()%></td>
			<td><input style = "width: 50px"="count" value = "1"></td>
		</tr>
		<% } %>
		
	</table>
</div>
</body>
</html>