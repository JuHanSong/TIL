<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c1 = new Cookie("name","juhan");
    	Cookie cAge = new Cookie("age","100");
    	Cookie cComany = new Cookie("Company","kgitBank");
    	response.addCookie(c1);
    	response.addCookie(cAge);
    	response.addCookie(cComany);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
주한 이름으로 브라우저에게 쿠키 심음.
<hr color="red">
<a href="getCookie.jsp">쿠키 얻어오기</a>
</body>
</html>