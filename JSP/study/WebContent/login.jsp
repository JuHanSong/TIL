<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "vo" class = "bean.MemberVO"/>
<jsp:setProperty property = "id" name = "vo"></jsp:setProperty>
<jsp:setProperty property = "pw" name = "vo"></jsp:setProperty>

<%
MemberDAO dao = new MemberDAO();
String s = "login Success";
boolean result = dao.login(vo);

if(result){
	session.setAttribute("id", vo.getId());
	response.sendRedirect("bbs.jsp");
}else{
	s = "login Fail";
	response.sendRedirect("login.html");
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
=== Login.jsp Page ===
Login Result = <%= s %>
</body>
</html>