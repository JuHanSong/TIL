<%@page import="bean.ProductVO"%>
<%@page import="bean.BbsVO"%>
<%@page import="bean.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	ProductDAO dao = new ProductDAO();
    	//컨트롤 + 시프트 + m  = 자동 import
    	ArrayList<ProductVO> list = dao.read();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.td{
	text-align: center;
	width: 100px;
	height: 50px;
}
.top{
background: blue;
font-weight: bold;
color: white;
}
.sub{
background: white;
}
</style>
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
	<td class="top">아이디</td>
	<td class="top">이름</td>
	<td class="top">컨텐츠</td>
	<td class="top">가격</td>
	<td class="top">회사</td>
	<td class="top">이미지</td>
</tr>
전체 개시물 수는 <%= list.size() %>명
<hr>
<% for(ProductVO bag2 : list) { %>
<tr>
<td><%= bag2.getId()%></td>
<td><%= bag2.getName()%></td>
<td><%= bag2.getcontent()%></td>
<td><%= bag2.getPrice()%></td>
<td><%= bag2.getCompany()%></td>
<td><img src="https://raw.githubusercontent.com/JuHanSong/jspimg/main/<%= bag2.getImg() %>.png"></td>

</tr>

<% } %><br><br>

</table>
</body>
</html>