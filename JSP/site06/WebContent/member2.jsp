<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.MemberDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    <%
    	MemberDAO dao = new MemberDAO();
    	boolean  result = dao.insert(dto);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(result){
	response.sendRedirect("member.jsp");
}else{

%>
<h3>회원가입에 실패했습니다.</h3>
<% } %>

</body>
</html>