<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //자주 사용하는 객체는 톰킷이 미리 만들어서 제공.
    //빌트인(내장된) 겍체
    //request, out, session 등....
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String company = request.getParameter("company");
    String tel = request.getParameter("tel");
    String gender = request.getParameter("gender");
    String word = request.getParameter("word");
    String[] hobby = request.getParameterValues("hobby"); // 여러개 값이 넘어올 때 배열로 넘겨준다.
    //String[] hobby = {"run", "book", "food"};
    String result = "";
    //null이 아닌경우만 선택해서 동작이 필요.
    for(String s :hobby){
    	result = result + s + " ";	
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	<body>
		<h3>서버에서 받은 데이터</h3>
		아이디 : <%= id%><br>
		비밀번호 :<%= pw%><br>
		이름 : <%= name%><br>
		연락처 : <%= company%>-<%=tel%><br>
		성별 : <%=gender%><br>
		하고싶은 말 : <%= word %><br>
		취미 : <%= result %>
		
	</body>
</html>