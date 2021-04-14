<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1. 입력하 값 받기 -->
   	<!-- 2. 가방에 만들어서 입력한값을 넣어주어야 함. -->
   	<!-- 3. bag에 들어있는 데이터를 주면서 DB처리 해야함. -->
	<!-- import bean.MemberVO;
		MemberVO vo = new BemberVO();
		JSP 액션태그
	-->
 	<jsp:useBean id = "vo" class = "bean.MemberVO"/>
    <jsp:setProperty property = "*" name = "vo"></jsp:setProperty>
    <!-- property : 속성
    	JAVA에서는 변수 / 멤버변수 
    	DB에서는 컬럼(= 항목 / 필드 / 열 / property / 어트리뷰트 / 아이템)
     -->
    <!-- 2. DB처리 해야함 -->
    <%
    // DB 처리를 할수있는 부품을 만들어 주어야 함.
	MemberDAO dao = new MemberDAO();

    
    // dao.create(id, pw, name, tel);
    dao.create(vo);
    %>
    <!-- 3. 결과를 클라이언트에게 통보 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원 가입이 되었습니다.
</body>
</html>