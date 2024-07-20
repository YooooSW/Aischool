package while문;

import java.util.Scanner;

public class Ex05예제 {

	public static void main(String[] args) {
		
		// do-while문
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		
		// + 짝수, 홀수의 개수를 저장하는 변수
		int 짝수 = 0;
		int 홀수 = 0;
		
		do {
			System.out.print("숫자입력: ");
			int num = sc.nextInt();
			// num : 홀수인지 짝수인지 판단
			if(num == -1) {
				System.out.println("종료되었습니다.");
				break;
			}
			
			if(num % 2 == 0) {
				++짝수;
			}else {
				++홀수;
			}
			
			System.out.println("짝수개수: " + 짝수);
			System.out.println("홀수개수: " + 홀수);
			
		}while(true);
		
		
		// while문
//		while(true) {
//			System.out.print("숫자입력: ");
//			int num = sc.nextInt();
//			
//			if(num == -1) {
//				System.out.println("종료되었습니다.");
//				break;
//			}
//			if(num%2 == 1) { // 홀수판단
//				홀수++;
//			}else {
//				짝수++;
//			}
//			System.out.println("짝수개수: " + 짝수);
//			System.out.println("홀수개수: " + 홀수);
//		}
		
		
		
	}

}
