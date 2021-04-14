<%@page import="bean.MemberVO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1. 입력하 값 받기 -->
    <%
    	String id = request.getParameter("id");
    %>
    
    <!-- 2. DB처리 해야함 -->
    <%
    // DB 처리를 할수있는 부품을 만들어 주어야 함.
	MemberDAO dao = new MemberDAO();
    MemberVO vo = new MemberVO();
    vo.setId(id);
    
    dao.delete(vo);
    //dao.delete(id);
    %>
    <!-- 3. 결과를 클라이언트에게 통보 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원 탈퇴 되었습니다.
</body>
</html>