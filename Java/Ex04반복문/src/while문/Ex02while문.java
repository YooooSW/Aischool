package while문;

import java.util.Scanner;

public class Ex02while문 {

	public static void main(String[] args) {
		
		// 입력 받은 수가 10보다 작을 때만
		// 계속 정수를 입력 받으세요.
		
		// 종료조건 : 사용자가 10보다 큰 수를 입력하면
		//		   while문을 빠져 나간다
		// 판단 - 조건식
		
		// 1) 입력하는 도구 가져오기
		Scanner sc = new Scanner(System.in);
		
		// 2) 
		while(true) {
			System.out.print("정수 입력 : ");
			int num = sc.nextInt();
			
			// 사용자가 입력한 숫자가
			// 10보다 큰 수인지 아닌지 판단
			if(num>10) {
				System.out.println("종료되었습니다.");
				break;
			}
		}
		

	}

}
