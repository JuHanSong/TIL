<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@page import="bean.MemberVO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- jsp : 액션태크 -->
    <!-- 가방역할을 하는 객체를 생성해주어야 한다.
    	 MemberVO bag = new MemberVO();
     -->
<jsp:useBean id="bag" class="bean.BbsVO"></jsp:useBean>
<jsp:setProperty property="id" name="bag"/>
<%
	BbsDAO dao = new BbsDAO();
	BbsVO bag2 = dao.read(bag);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
검색된 결과입니다.
<hr color="red">
검색된 ID = <%= bag2.getId()%>
검색된 title = <%= bag2.getTitle()%>
검색된 content = <%= bag2.getContent()%>
검색된 writer = <%= bag2.getWriter()%>

</body>
</html>