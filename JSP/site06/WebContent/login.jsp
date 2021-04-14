<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.MemberDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
<%
	MemberDAO dao = new MemberDAO();
	boolean result = dao.login(dto);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<% if(result) {
			session.setAttribute("id", dto.getId());
			response.sendRedirect("member.jsp");
			}else{
		%>
<h3>로그인에 실패했습니다</h3>
<a href="member.jsp">
<button>로그인 페이지</button>
</a>
<% } %>
	</div>
	회원과 관련된 페이지
</div>
</body>
</head>
</html>