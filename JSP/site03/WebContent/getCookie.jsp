<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//서버가 브라우저에서 정보를 가지고 와야함.
    	// request 객체 사용.
    	
    	Cookie[] list = request.getCookies();
    	//Cookie c1 = list[0];    		
    	//Cookie c2 = list[1];    		
    	//Cookie c3 = list[2];    		
    	//Cookie c4 = list[3];    		
    	//Cookie c5 = list[4];    	
    	for(Cookie c : list){
    		if(!c.getName().equals("JSESSIONID")){
    			out.print(c.getName() + "<br>");
    			out.print(c.getValue() + "<hr>");
    		}
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키의 개수는<%= list.length %> 개 <br>


</body>
</html>