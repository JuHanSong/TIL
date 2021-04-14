package DFS;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;
import java.util.Stack;




public class BaekJoon1260 {
	static int [][] map;
	static boolean[] visit;
	static int n,m,v;
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("n / m / v 순서로 입력");
		n = sc.nextInt();
		m = sc.nextInt();
		v = sc.nextInt();
		
		map = new int [n+1][n+1];
		visit = new boolean[n+1];
		
		int num1, num2;
		
		for(int i = 1; i<=m; i ++) {
			System.out.println("num1,num2 순서로 입력");
			num1 = sc.nextInt();
			num2 = sc.nextInt();
			map[num1][num2] = map[num2][num1] = 1;
		}
		System.out.print("재귀함수 = ");
		dfs(v);
		System.out.println();
		reset();
		System.out.print("Stack = ");
		dfsStack(v);
		System.out.println();
		reset();
		System.out.print("Queue = ");
		bfs(v);
		
		
	}
	
	public static void dfs(int d) {
		visit[d] = true;
		System.out.print(d + " ");
		for(int i = 1; i < n+1; i++) {
			if(map[d][i] == 1 && !visit[i]) {
				dfs(i);
			}
		}
	}// 재귀함수
	
	public static void reset() {
		for(int i = 0; i <visit.length; i ++) {
			visit[i] = false;
		}
	}

	public static void dfsStack(int d) { 
		Stack<Integer> stack = new Stack<>();
		stack.push(d);//값 스택에 넣고
		int p;
		boolean flag; visit[d] = true; 
		
		System.out.print(d + " "); 
		
		while (!stack.isEmpty()){ 
			p = stack.peek(); // 최상단 값 출력
			flag = false; 
			for (int i=1; i<n+1; i++){ 
				if(map[p][i] == 1 & !visit[i]) {
					stack.push(i); visit[i] = true;
					System.out.print(i + " ");
					flag = true;
					break; 
				} 
			} 
		if (!flag){ 
			stack.pop();
			} 
		} 
	}
	
	public static void bfs(int b) {
		Queue<Integer> queue = new LinkedList<Integer>();
		queue.add(b);
		visit[b] = true;
	
		while(!queue.isEmpty()) {
			b = queue.poll(); // 큐에 값 넣고
			System.out.print(b + " ");
			for(int i = 0; i < n+1; i++) {
				if(map[b][i] == 1 & !visit[i]) {
					queue.offer(i);// 큐에서 제거
					visit[i] = true;
				}
			}
		}
	}
	
}
