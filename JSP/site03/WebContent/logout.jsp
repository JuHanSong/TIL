<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();//무효화하다.
	//session.removeAttribute("id"); // 아이디 잡은거를 지우기
	response.sendRedirect("login_start.jsp");
	//response는 서버가 클라이언트인 브라우저에게 명령.
	//login_start.jsp를 요청하도록 명령함.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>