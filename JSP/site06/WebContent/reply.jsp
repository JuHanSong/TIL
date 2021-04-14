<%@page import="bean.ReplyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.ReplyDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    
    <%
    	ReplyDAO dao = new ReplyDAO();
    	boolean result = dao.insert(dto);
    	if(result){
    		response.sendRedirect("bbs2.jsp?id= " + dto.getOriid());
    	}else{
    		out.print("댓글달기 실패");
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>