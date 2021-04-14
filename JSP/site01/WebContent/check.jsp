<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% 
    	//1. 입력해서 전달 받은 데이터를 서버에서 받아주어야 한다.
    	//HttpServletRequest request = new HttpServletRequest();
	    String id = request.getParameter("id");//name 이 id 로 넘어온 값 받기.root
	    String pw = request.getParameter("pw");//name이 pw 로 넘어온 값받기.1234
	    
    	//2. 로그인 정보와 일치하는지 확인해야 한다.
    	String result = "";
    	if(id.equals("root") && pw.equals("1234")){
    		result = "로그인 성공";
    	}else{
    		result = "로그인 실패";
    	}
    	
    	//3. 로그인 처리 결과를 클라이언트(브라우저)에게 알려주어야 한다.
    	//                  (html)
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	서버에서 받은 ID 는 <%= id %><br>
	서버에서 받은 PW 는 <%= pw %><br>
	<hr color="red">
	로그인 결과는 <%= result %>입니다.
</body>
</html>