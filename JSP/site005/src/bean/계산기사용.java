package bean;

import java.util.ArrayList;
import java.util.Iterator;

public class 계산기사용 {
	public static void main(String[] args) {
		계산기 cal = new 계산기();
		
		ArrayList<Product> list = cal.div();
		for(Product bag2 : list) {
			System.out.println("반환 값 >> "+bag2.getId());
			System.out.println("반환 값 >> "+bag2.getName());
			System.out.println("반환 값 >> "+bag2.getPrice());
		}
		
		
		int resultAdd = cal.add(100, 200);
		//처리 결과를 가지고 다른 처리를 이어서 하고 싶을때
		
		if(resultAdd > 250) {
			System.out.println("숫자가 너무 커요..");
		}else System.out.println("숫자가 정당해요 " + resultAdd);
		
		int[] resultMinus = cal.minus();
		for(int i : resultMinus) {
			System.out.println( i +" 번째 >> " + resultMinus[i-1]);
		}
		
		Product bagData = cal.mul();
		System.out.println("반환 값 >> "+bagData.getId());
		System.out.println("반환 값 >> "+bagData.getName());
		System.out.println("반환 값 >> "+bagData.getPrice());
		
		
		
	}
}
