<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	int money2 = Integer.parseInt(money);
	double result = 0;
	
	if(choice.equals("1")){//계좌이체
		result = money2 * 0.8;
	}else if(choice.equals("2")){//신용카드
		result = money2 * 0.9;
	}else {//휴대폰결제
		result = money2;
	}

%>
<%= (int)result %>원 을 결제합니다.