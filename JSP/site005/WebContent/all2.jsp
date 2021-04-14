<%@page import="bean.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	MemberDAO dao = new MemberDAO();
    	//컨트롤 + 시프트 + m  = 자동 import
    	ArrayList<MemberVO> list = dao.read();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td{
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
</head>
<body>
전체 회원의 수는 <%= list.size() %>명
<hr>
<table border="1">
<tr>
	<td class="top">아이디</td>
	<td class="top">비밀번호</td>
	<td class="top">이름</td>
	<td class="top">전화번호</td>
</tr>
<% for(MemberVO bag2 : list) { %>
<tr>
	<td class="sub"><%= bag2.getId()%></td>
	<td class="sub"><%= bag2.getPw()%></td>
	<td class="sub"><%= bag2.getName()%></td>
	<td class="sub"><%= bag2.getTel()%></td>
</tr>
<% } %><br><br>
</table>

</body>
</html>