<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Try Login Page</title>
</head>
<body>
<%= session.getAttribute("id") %><br>
<%
	if(session.getAttribute("id") == null){
%>
<form action="login.jsp">
	아이디 : <input name="id"><br>
	비밀번호 : <input name="pw"><br>
	<button>로그인</button>
</form>
<% } else{ %> 
<hr color="red">
<a href = logout.jsp>
<button>로그아웃</button>
</a>
<% } %>

</body>
</html>