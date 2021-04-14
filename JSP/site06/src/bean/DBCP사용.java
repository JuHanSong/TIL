package bean;

public class DBCP사용 {
	
	public static void main(String[] args) {
		DBCP dbcp1 = DBCP.getInstance();
		System.out.println(dbcp1);
		DBCP dbcp2
		= DBCP.getInstance();
		System.out.println(dbcp2);
		
	}
	
}
