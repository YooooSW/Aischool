package for문;

public class Ex00for문 {

	public static void main(String[] args) {
		
		// 반복문 : 특정 명령을 반복할 수 있도록 도와주는 문법
		// - while, do-while, for
		
		// for
		// : 반복 횟수가 정해져 있을 때 사용하는 반복문
		
		// *문법 구조
		// for(초기화구문; 조건식; 반복후 작업)
		// for(시작점; 도착점; 보폭)
		
		// 1 2 3 4 5
		for(int i=1; i<6; i++) {
			System.out.print(i+ " ");
		}
		
		// 1부터 10까지 출력하는 for문을 작성해보자
		for(int i=1; i<=10; i++) {
			// i : 1 2 3 4 5 6 7 8 9 10
			// (10번 반복하는 for문)
			System.out.println(i);
		}
		
		for(int i=1; i<=100; i++) {
			if(i%2 == 0) {
				System.out.println(i);
			}
		}
		
		// 1~10까지의 합 출력
//		int sum = 0;
//		for(int i=1; i<=10; i++) {
//			sum += i;
//			System.out.print(i);
//			if(i<=9)
//				System.out.print("+");
//			else {
//				System.out.print("=");
//				System.out.print(sum);
//			}
//		}

	}

}
