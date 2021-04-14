package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	Connection con; // 전역변수 : 자동초기화, 참조형 변수는 무조건 NULL
	
	// 객체생성시 클래스 이름과 동일한 메스드가 있으면 자동호출 되면서 객체생성을 함.
	// 생성자 메서드, 생성장(constructor)
	// 객체 생성시 반드시 해주어야 하는 작업이 있으면 생성자에 넣어주면 된다. 
	public MemberDAO() throws Throwable {
		// Java DB Connectivity(JDBC Program)
		// 부품조립식!
		// 라이브러리필요! -> mySQL 5.5(MVC 저장소에서 다운로드)
		//1. Driver설정  
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("====== 1. 드라이버 설정 설정. =====");// log
		//2. DB 연결
		String url = "jdbc:mysql://localhost:3366/summer";
		con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("====== 2. MySQL DB 연결 =====");// log
	}
	
	//기능을 정의하고 싶음. CreateReadeUpdateDelete
	public void create(MemberVO vo) throws Exception {
		System.out.println("회원가입 처리할 예정.");
		System.out.println("id = " + vo.getId() + "pw = " + vo.getPw() + "Name = " + vo.getName() + "Tel = " + vo.getTel());
		
		//3. SQL문 생성. (Create : insert 문)
		String sql = "insert into member values(?,?,?,?);";//(id,pw,name,tel) 순서로 입력.
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("====== 3. SQL 생성성공 =====");// log
		//preparedStatemnet : SQL을 나타내는 객체
		ps.setString(1, vo.getId());
		ps.setString(2, vo.getPw());
		ps.setString(3, vo.getName());
		ps.setString(4, vo.getTel());
	
		ps.executeUpdate();
		System.out.println("====== 4. SQL 전송성공 =====");// log
		//4. SQL문 전송.
		
	}
	public void read() {
		System.out.println("회원검색 처리할 예정.");
		
		
		
		
	}
	public void update(MemberVO vo) throws Throwable {
		System.out.println("회원수정 처리할 예정.");
		System.out.println("id =" + vo.getId() + " tel =" + vo.getTel());
		
		//3. SQL문 생성. (Create : insert 문)
		String sql = "update member set tel = ? where id = ?";//(id,pw,name,tel) 순서로 입력.
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("====== 3. SQL 생성성공 =====");// log
		//preparedStatemnet : SQL을 나타내는 객체
		ps.setString(1, vo.getTel());
		ps.setString(2, vo.getId());
	
		int result = ps.executeUpdate();
		
		System.out.println("====== 4. SQL 전송성공 =====");// log
		//4. SQL문 전송.
		
	}
	public void delete(MemberVO vo) throws Throwable {
		System.out.println("회원삭제 처리할 예정.");
		System.out.println("id =" + vo.getId());
		
		//3. SQL문 생성. (Create : insert 문)
		String sql = "delete from member where id = ?";//(id,pw,name,tel) 순서로 입력.
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("====== 3. SQL 생성성공 =====");// log
		//preparedStatemnet : SQL을 나타내는 객체
		ps.setString(1, vo.getId());
	
		int result = ps.executeUpdate();
		
		if(result != 0) {
			System.out.println("탈퇴 성공");
		}else {
			System.out.println("탈퇴 실패");			
		}
		System.out.println("====== 4. SQL 전송성공 =====");// log
		//4. SQL문 전송.
	}
	public boolean login(MemberVO vo) throws Throwable {
		System.out.println("== 로그인 시작");
		System.out.println("id =" + vo.getId() + "pw = " + vo.getPw());
		
		// Java DB Connectivity(JDBC Program)
		// 부품조립식!
		// 라이브러리필요! -> mySQL 5.5(MVC 저장소에서 다운로드)
		//1. Driver설정  
		
		
//		Class.forName("com.mysql.jdbc.Driver");
//		System.out.println("====== 1. 드라이버 설정 설정. =====");// log
//		//2. DB 연결
//		String url = "jdbc:mysql://localhost:3366/summer";
//		Connection con = DriverManager.getConnection(url, "root", "1234");
//		System.out.println("====== 2. MySQL DB 연결 =====");// log
		
		
		//3. SQL문 생성. (Create : insert 문)
		String sql = "select id from member where id = ? and pw = ?";//(id,pw,name,tel) 순서로 입력.
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("====== 3. SQL 생성성공 =====");// log
		//preparedStatemnet : SQL을 나타내는 객체
		ps.setString(1, vo.getId());
		ps.setString(2, vo.getPw());
		System.out.println("====== 4. SQL 전송성공 =====");// log
	
		ResultSet result = ps.executeQuery();
		boolean flag = result.next();
		return flag;

//		System.out.println("로그인 결과 = " + result.next());// 있으면 true 없으면 false
		//4. SQL문 전송.
	}
	
}
