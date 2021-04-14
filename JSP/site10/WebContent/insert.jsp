<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%// 스크립트릿(scriptlet)
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");

/* mySQL에 넣는 처리해야함.(db에 넣는다.)
	-. db는 목적성이 있어야 함.
*/
//JAVA DB 연결(Connect)프로그램 : JDBC 프로그래밍.
//1. connector 설정.
Class.forName("com.mysql.jdbc.Driver");
//PrintWriter out = new PrintWriter();
out.print("1.커넥터 설정성공<br>");
//2. mySQL연결.
String url = "jdbc:mysql://localhost:3366/spring";
Connection con = DriverManager.getConnection(url, "root", "1234");
out.print("2.mySQL 연결성공<br>");

//3. SQL문 만들어주어야 한다.
String sql = "insert into spring.member values(?,?,?,?)";

PreparedStatement ps = con.prepareStatement(sql);
out.print("3.sql문 생성 성공.<br>");
ps.setString(1, id);
ps.setString(2, pw);
ps.setString(3, name);
ps.setString(4, tel);

//4. SQL문을 mySQL 전송해준다.
ps.executeUpdate();
out.print("4.SQL문 연결성공<br>");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시물 작성이 완료되었습니다.</h1><!-- h1 ~ h6 1이 제일 큰 글자, header -->
</body>
</html>