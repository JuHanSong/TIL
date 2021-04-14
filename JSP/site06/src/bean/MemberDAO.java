package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	DBConnectionMgr dbcp;
	Connection con;
	PreparedStatement ps;
	
	public MemberDAO() {
		// 1,2단계.
		dbcp = DBConnectionMgr.getInstance();// singleton으로 한번만 객체 생성.
	}
	
	public boolean insert(MemberDTO dto) {
		int result = 0;
		
		try {
			con = dbcp.getConnection();
			String sql = "insert into member values (?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		boolean result2 = false;
		
		if (result != 0) {
			result2 = true;
		}
		return result2;
	}
	
		public boolean login(MemberDTO dto) throws Exception {
			con = dbcp.getConnection();
			String sql = "select id from member where id = ? and pw = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ResultSet rs = ps.executeQuery();
			
			boolean result = false; // 초기값
			
			if(rs.next()) {
				result = true;
			}
			dbcp.freeConnection(con);
			return result;
		}
		
	}
	
