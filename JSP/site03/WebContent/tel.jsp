<%@page import="java.util.Random"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
	String tel = request.getParameter("tel");// 010-9145-3136(임의의 번호 입력...)
	String sub = tel.substring(0,3); // 각 문자들의 위치값(index)

	String result = "";//결과 값 도출
	if(sub.equals("010")){
		result = "111";
	}else if (sub.equals("011")){
		result = "222";
	}else{
		result = "333";
	}
	Random r = new Random();//난수 생성.
	int plus = r.nextInt(900) + 100;// 100 ~ 899
	result = result + plus;
%><%= result %>가 서버에 도착했습니다.