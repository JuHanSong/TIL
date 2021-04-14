package bean;

public class DBCP {
	static DBCP instance;
	private DBCP() {
		
	} // 생성자를 private으로 선언하면 외부에서 객체생성이 불가하다.
	// DBCP dbcp = new DBCP(); 사용불가.
	
	//객체가 이미 만들어 졌는지, 안만들어 졌는지 체크.
	// 객체생성 전 호출하는 static메서드를 만들어두면 됨. 
	//아직 만들어지지 않으면 만들고, 이미 만들어져 있다면 객체를 더이상 만들지 않고 
	//이미 만들어져 있는 객체(참조형변수)의 주소를 준다.
	//싱글톤 : 객체를 하나만 만들어서 계속 재사용하는 방법.
	public static DBCP getInstance() {
		if(instance == null) {
			// 객체가 없다면 객체를 생성.
			instance = new DBCP();
		}
		return instance;
	}

}
