<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //JAVA DB 연결(Connect)프로그램 : JDBC 프로그래밍.
    //1. connector 설정.
    Class.forName("com.mysql.jdbc.Driver");
    //PrintWriter out = new PrintWriter();
    out.print("1.커넥터 설정성공<br>");
    //2. mySQL연결.
    String url = "jdbc:mysql://localhost:3366/spring";
   	DriverManager.getConnection(url, "root", "1234");
    out.print("2.mySQL 연결성공<br>");
    //3. SQL문 만들어주어야 한다.
    
    //4. SQL문을 mySQL 전송해준다.
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