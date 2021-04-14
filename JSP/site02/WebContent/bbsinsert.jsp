<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String num = request.getParameter("num");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	
	//1. connector 설정.
	Class.forName("com.mysql.jdbc.Driver");
	//PrintWriter out = new PrintWriter();
	out.print("1.커넥터 설정성공<br>");
	//2. mySQL연결.
	String url = "jdbc:mysql://localhost:3366/spring";
	Connection con = DriverManager.getConnection(url, "root", "1234");
	out.print("2.mySQL 연결성공<br>");

	//3. SQL문 만들어주어야 한다.
	String sql = "insert into spring.bbs values(?,?,?,?)";
	/* String site = "";
	URL rul2 = new URL(site);*/
	PreparedStatement ps = con.prepareStatement(sql);
	out.print("3.sql문 생성 성공.<br>");
	ps.setString(1, num);
	ps.setString(2, title);
	ps.setString(3, content);
	ps.setString(4, writer);

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
	순번 : <%=  num %><br>
	제목 : <%=  title %><br>
	내용 : <%=  content %><br>
	작성자 : <%=  writer %><br>
	
	
</body>
</html>