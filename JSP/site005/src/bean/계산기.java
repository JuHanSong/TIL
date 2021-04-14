package bean;

import java.util.ArrayList;

public class 계산기 {
	// 기능은 메서드로 정의한다.
	public int add(int a, int b) {
		System.out.println("a 와 b를 더하는 메서드 입니다.");
		int result = a + b;
		
		return result;
	}
	public int[] minus() {
		System.out.println("a 와 b를 빼는 메서드 입니다.");
		int[] array = {1,2,3,4,5};
		
		return array;	
	}
	public Product mul() {
		// 유형이 다른 값들을 묶을 때, 가방역할을 하는 클래스를 만들어서 넣습니다.
		Product product = new Product();
		
		product.setId("100");
		product.setName("신발");
		product.setPrice(1000);
		
		return product;
	}
	public ArrayList<Product> div() {
		// 가방이 많을때는 가방을 넣을 더 큰 컨테이너 역할을 할수있는 클래스 사용해야 한다.
		ArrayList<Product> list = new ArrayList<>();
		Product product = new Product();

		for(int i = 0; i < 10; i ++) {
			product.setId("100" + i);
			product.setName("신발" + i);
			product.setPrice(1000 + i);
			list.add(product);
		}
		System.out.println("list 크기 >> " + list.size());
		return list;
	}
	
	
	
}
