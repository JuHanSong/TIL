# 1. SQL

## 1) 작업순서

* - DB 생성 - 테이블 생성 - 테이블에 데이터 입력.

* 웹사이트를 만들때 db는 테이블까지 미리 만들어둔다.

* 자바로 구현하는 부분은 테이블에 들어갈 데이터를 조작. [크루드(CRUD) 라고 업계에서는 사용.]

  * 데이터 삽입 (Create) : insert, 회원가입.

  * 데이터 검색(Read) : select, 회원정보검색.

  * 데이터 수정(Update) : update, 회원정보수정.

  * 데이터 삭제(Delete) : delete, 회원탈퇴.

    

# 2. java - DB 연결

## 1) https://mvnrepository.com/artifact/mysql/mysql-connector-java/5.1.46 

* 경로에서 SQL버전에 맞는 커넥터 파일 다운로드.

* JSP - WebContent - WEB -INF - lib 아래에 해당 jar 파일을 저장.

* WebContent 아래에 db연결하는 jsp 생성.

  ```
  <%
  //자바와 mySQL을 연결.
  //JAVA DB Connectivity(JDBC프로그램밍)
  
  //1. connector (driver)설정.
  Class.forName("com.mysql.jdbc.Driver");
  out.print("1. 커넥터 설정 성공<br>"); // 연결이 성공하면 html에 해당 문구를 프린트.
  // out 은 Requset와 같이 객체를 따로 생성하지 않아도 바로 사용이 가능함. 
  
  //2. mySQL서버를 연결.
  String url = "jdbc:mysql://localhost:3366/shop"; // Java - DB를 mysql를 이용하여 localhost shop DB에 연결. 
  String user ="root"; // DB 이름으로 접근.
  String password = "12341234"; // DB 비밀번호.
  
  DriverManager.getConnection(url, user, password); 
  out.print("2. DB연결 성공.<br>");
  %>
  ```

  * Class.forName (String) :  메소드는 파라미터로 전달받은 이름을 갖는 클래스와 관련된 Class 클래스의 객체를 생성한다. 

# 3. HDBC 프로그램 순서

* Connetor (Driver) 설정

* dbserver 연결 : url, user, pw

* sql문 생성 (C삽입R검색U수정D삭제)

* sql dbserver로 전송

  