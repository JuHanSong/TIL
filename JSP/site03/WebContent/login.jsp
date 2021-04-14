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
    <jsp:setProperty property = "id" name = "vo"></jsp:setProperty>
    <jsp:setProperty property = "pw" name = "vo"></jsp:setProperty>
    <!-- property : 속성
    	JAVA에서는 변수 / 멤버변수 
    	DB에서는 컬럼(= 항목 / 필드 / 열 / property / 어트리뷰트 / 아이템)
     -->
    <!-- 2. DB처리 해야함 -->
    <%
    // DB 처리를 할수있는 부품을 만들어 주어야 함.
	MemberDAO dao = new MemberDAO();
    String s = "로그인 성공";
    boolean result = dao.login(vo);//true & false
    if(result){
    	//서버가 브라우저에게 명령을 할 때 사용하는 내장된 객체.
    	//response
    	//id는 연결이 되고 잇는 상황에서 아무 페이지에서나 id를 쓸수 있어야한다.
    	//브라우저와 서버와의 연결은 세션(session)이라고 부른다.
    	//세션의 속성을 지정하면 아무데서나 쓸 수 있다. 
    	session.setAttribute("id", vo.getId());
    	response.sendRedirect("login_start.jsp");
    }else{
    	s = "로그인 실패";
    }
    // dao.create(id, pw, name, tel);
    %>
    <!-- 3. 결과를 클라이언트에게 통보 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
*** 로그인 처리결과 ***
<%= s %>
</body>
</html>