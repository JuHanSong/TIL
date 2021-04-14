package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class ProductDAO {
	Connection con; // 전역변수 : 자동초기화, 참조형 변수는 무조건 NULL
	
	// 객체생성시 클래스 이름과 동일한 메스드가 있으면 자동호출 되면서 객체생성을 함.
	// 생성자 메서드, 생성장(constructor)
	// 객체 생성시 반드시 해주어야 하는 작업이 있으면 생성자에 넣어주면 된다. 
	public ProductDAO() throws Exception {
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
	
	public BbsVO read(BbsVO bag) throws Exception {
		System.out.println("게시판검색 처리할 예정.");
		
		//3. SQL문 생성. (Create : insert 문)
		String sql = "select * from bbs where id = ?";//(id,pw,name,tel) 순서로 입력.
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("====== 3. SQL 생성성공 =====");// log
		//preparedStatemnet : SQL을 나타내는 객체
		ps.setString(1, bag.getId());
		
		// 4. SQL문 mySQL로 전송. 
		ResultSet rs = ps.executeQuery();//select결과 테이블을 dao에 넘겨준다. return!
//		System.out.println("검색결과 = " + rs.next());
		//JOptionPane.showMessageDialog(null, "검색결과 = " + rs.next());
		
		// DB에서 검색한 결과를 JSP HTML에 넣어야 클라이언트가 보여줄수 있다.
		// DAO가 검색한 결과를 JSP에 주어야 함. 
		// 검색한 결과가 여러개 인 경우 하나로 묶어서 보내야 한다.
		// id, pw, name, tel 을 묶어서 보내기 위해서 가아(VO, DTO)를 사용함.
		BbsVO bag2 = new BbsVO();
		if(rs.next()) {
			//rs.next() 값이 true이면, 검색결과가 있다면.. 검색결과로 받은 테이블에서 하나씩 꺼내는 구문.
			//항목명이나 위치값(index)를 이용해서 값을 꺼내주자.
			String id = rs.getString(1);// == id, rs.getString("id");
			String tilte = rs.getString(2);// == id, rs.getString("id");
			String content = rs.getString(3);// == id, rs.getString("id");
			String writer = rs.getString(4);// == id, rs.getString("id");
			
			bag2.setId(id);
			bag2.setTitle(tilte);
			bag2.setContent(content);
			bag2.setWriter(writer);
		}
		return bag2;	
	}
	
	public ArrayList<ProductVO> read() throws Exception {
		System.out.println("게시판검색 처리할 예정.");
		
		//3. SQL문 생성. (Create : insert 문)
		String sql = "select * from product";//(id,pw,name,tel) 순서로 입력.
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("====== 3. SQL 생성성공 =====");// log
		ResultSet rs = ps.executeQuery();//select결과 테이블을 dao에 넘겨준다. return!

		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		while(rs.next()) {
			ProductVO bag2 = new ProductVO();
			//rs.next()를 호출할 때마다 row의 위치(포인터)를 하나씩 아래로 옮겨가면서 해당 row가 있는지 없는지 체크 
			
			
			bag2.setId(rs.getString(1));
			bag2.setName(rs.getString(2));
			bag2.setcontent(rs.getString(3));
			bag2.setPrice(rs.getString(4));
			bag2.setCompany(rs.getString(5));
			bag2.setImg(rs.getString(6));
			list.add(bag2);
		}
		return list;
		
	}
}
