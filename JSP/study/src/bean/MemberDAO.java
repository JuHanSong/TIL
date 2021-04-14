package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	Connection con;
	
	public MemberDAO() throws Throwable {
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("=== 1. Driver Setting ====");
		String url = "jdbc:mysql://localhost:3366/study";
		con = DriverManager.getConnection(url, "root", "1234");// url / DBid / DBpw;
		System.out.println("=== 2. DB Connected ====");
	}// 공통으로 사용하는 메서드 생성자에 넣어준다.
		
	
	public void create(MemberVO vo) throws Throwable {
		System.out.println("=== Create Start ===");
		System.out.println("log info id = " + vo.getId() + "pw = " + vo.getPw() + "Name = " + vo.getName() + "Tel = " + vo.getTel());
		
		String sql = "insert into member values(?,?,?,?)"; //DB SQL문 
		PreparedStatement ps = con.prepareStatement(sql);
		
		System.out.println("3. === SQL success ===");
		ps.setString(1, vo.getId());
		ps.setString(2, vo.getPw());
		ps.setString(3, vo.getName());
		ps.setString(4, vo.getTel());
		
		ps.executeUpdate();
		System.out.println("4. === success ===");
	}//Data 생성
	
	public void read(MemberVO vo) {
		System.out.println("=== Read Start ===");
	}//Data 읽기
	public void update(MemberVO vo) throws Throwable {
		System.out.println("=== Update Start ===");
		System.out.println("log info id = " + vo.getId() + "pw = " + vo.getPw() + "Name = " + vo.getName() + "Tel = " + vo.getTel());
		
		String sql ="update member set tel = ? where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3. === SQL success ===");
		ps.setString(1, vo.getTel());
		ps.setString(2, vo.getId());
		
		System.out.println("4. === success ===");
		int result = ps.executeUpdate();
	}//Data 변경
	public void delete(MemberVO vo) throws Throwable {
		System.out.println("=== Delete Start ===");
		String sql = "delete from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, vo.getId());
		
		int result = ps.executeUpdate();
		
		if(result != 0) {
			System.out.println("delete Success");
		}else {
			System.out.println("delete Fail");
		}
		System.out.println("====== 4. SQL 전송성공 =====");// log
		}
	
	public boolean login(MemberVO vo) throws Throwable {
		String sql = "select id from member where id = ? and pw = ?";
		System.out.println("=== 3.SQL success ===");
		System.out.println("ID = " + vo.getId() + "PW = " + vo.getPw());
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, vo.getId());
		ps.setString(2, vo.getPw());
		
		ResultSet result = ps.executeQuery();
		boolean flag = result.next();
	
		System.out.println("====== 4. SQL 전송성공 =====");// log
		System.out.println("flag = " + false);
		
		return flag;
	}
}
