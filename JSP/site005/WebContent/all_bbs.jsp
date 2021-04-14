<%@page import="bean.BbsDAO"%>
<%@page import="bean.ProductVO"%>
<%@page import="bean.BbsVO"%>
<%@page import="bean.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	BbsDAO dao = new BbsDAO();
    	//컨트롤 + 시프트 + m  = 자동 import
    	ArrayList<BbsVO> list = dao.read();
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
	<td class="top">타이틀</td>
	<td class="top">컨텐츠</td>
	<td class="top">작성자</td>
</tr>
전체 개시물 수는 <%= list.size() %>명
<hr>
<% for(BbsVO bag2 : list) { %>
<tr>
<td><%= bag2.getId()%></td>
<td><%= bag2.getTitle()%></td>
<td><%= bag2.getContent()%></td>
<td><%= bag2.getWriter()%></td>
</tr>

<% } %><br><br>

</table>
</body>
</html>