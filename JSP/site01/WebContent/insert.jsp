<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% 
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	서버에서 받은 ID 는 <%= id %><br>
	서버에서 받은 PW 는 <%= pw %><br>
	서버에서 받은 name 는 <%= name %><br>
	서버에서 받은 tel 는 <%= tel %><br>
</body>
</html>