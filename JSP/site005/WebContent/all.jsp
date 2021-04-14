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
</head>
<body>
전체 회원의 수는 <%= list.size() %>명
<hr>
<% for(MemberVO bag2 : list) { %>
검색된 ID = <%= bag2.getId()%><br>
검색된 PW = <%= bag2.getPw()%><br>
검색된 Name = <%= bag2.getName()%><br>
검색된 TEL = <%= bag2.getTel()%><br>
<% } %><br><br>


</body>
</html>