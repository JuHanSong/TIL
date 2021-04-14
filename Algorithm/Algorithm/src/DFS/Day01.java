package DFS;

import java.util.Scanner;

public class Day01 {
	static int n = 0;
	static int m = 0;
	static int[][] arryVal = {{0,0,1,1,0},{0,0,0,1,1},{1,1,1,1,1},{0,0,0,0,0}};
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("n,m 값을 입력해 주세요.");
		n = sc.nextInt();
		m = sc.nextInt();
		
		System.out.println("정답 = " + solution(n,m));
	}
	
	public static int solution(int n, int m) {
		int result = 0; //정답
		int[][] arry = new int[n][m];// 입력받은 n,m의 2차원 배열 생성.
		
		for(int i = 0; i < n; i++) {
			for(int j = 0; j < m; j++) {
				if(check(i, j)) {
					System.out.println("i = " + i + "j = " + j);
					System.out.println("result = " + result);
					result += 1;
				}
			}
		}//2차원 배열을 모두 검색하면서 결과를 도출
		return result;
	}
	
	public static boolean check(int i, int j) {
		if(i < -1 || i > n || j < -1 || i > m ) 
			return false;
		
		if(arryVal[i][j] == 0) {
			arryVal[i][j] = 1;
			check(i-1, j); // P1 검색
			check(i+1, j-1); // P2 검색
			check(i+1, j); // P3 검색
			check(i, j); // P4 검색
			return true;
		}
		return false;
	}
	
}
