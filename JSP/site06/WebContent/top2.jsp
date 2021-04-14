<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><br>
<%
//장바구니 세션이 없으면,장바구니 없음을 프린트
	if(session.getAttribute("basket") != null){
	ArrayList<ProductDTO> basket = (ArrayList<ProductDTO>)session.getAttribute("basket");
	
	int sum = 0;
	for(ProductDTO dto : basket){
	sum = sum + Integer.parseInt(dto.getPrice());
	}
	%>
		장바구니 상품 수 : <%= basket.size() %> 개<br>
		총 금액은 : <%= sum %> 원 입니다.
	<%}else{%>
장바구니에 물건이 없습니다.
<% } %>