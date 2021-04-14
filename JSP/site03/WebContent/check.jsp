<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String[] list = {"root", "admin", "test"};
 	String result = "회원가입 가능";
	
 	//for-each(하나씩) : 배열안에 있는 요소들을 반복해서 하나씩 꺼내줌.
	for(String s : list){
		if(id.equals(s)){
			result = "가입불가.";
			break;
		}
	}
%>
<%= result %>