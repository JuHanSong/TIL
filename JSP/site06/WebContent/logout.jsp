<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그아웃 처리는 센션을 끊는 것으로 처리함. -->
<!-- 로그아웃 처리후 첫페이지 member.jsp로 넘어갈 예정. -->
<% 
	//HttpSession session = new HttpSession();
	// 내장된 객체 : session, request, response, out
	session.invalidate();
	//브라우저와 웹서버와의 연결 : session.
	response.sendRedirect("member.jsp");// 브라우저에게 member.jsp를 요청하라고 명령.
	//response : 웹서버가 브라우저에게 명령을 할 때 사용하는 내장된 객체.
	
%>