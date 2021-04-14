<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= session.getAttribute("id")%><br>
<% 
	if(session.getAttribute("id") == null){
%>
<form action="login.jsp">
	아이디 : <input name = "id"><br>
	비밀번호: <input name = "pw"><br>
	<button>로그인</button>
</form>
<% } else{ %> <!-- 세션이 잡혀있음. 로그인이 되었음. -->
<hr color="red">
<a href = "logout.jsp">
	<button> 로그아웃</button><br>
</a>
<a href="news.jsp">뉴스</a>
<a href="cafe.jsp">카페</a><br>
<% } %>
</body>
</html>