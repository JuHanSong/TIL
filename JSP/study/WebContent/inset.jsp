<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vo" class="bean.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
MemberDAO dao = new MemberDAO;
dao.create(vo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
=== inset page ===
</body>
</html>