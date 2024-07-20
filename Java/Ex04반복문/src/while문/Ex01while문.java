package while문;

import java.util.Scanner;

public class Ex01while문 {

	public static void main(String[] args) {
		
		// while문
		// 반복 횟수가 정해져 있지 않은 경우 사용한다.
		// ex) 사용자가 5라는 숫자를 입력하면 멈출껀데
		// 	   몇번째에서 5라는 숫자를 입력할지 모름
		
		// while문의 구조
		// while(조건식){조건식이 true일 동안 실행되는 코드}
		// 1) 조건식을 사용해서 while문을 멈춰보자
		int num = 1;
		// 2) 조건식을 true
		//    종료 조건을 준다.
		while(num <= 10) {
			System.out.println("출력");
			num++;
			if(num == 10) {
				break;
				// 반복문을 종료시키는 키워드
			}
		}
		
		// 실습) 사용자로부터 숫자를 입력받는 걸 반복
		// 사용자가 숫자로 7을 입력하면 멈추게 만들자
		
		// 정수 입력 : 1
		// 정수 입력 : 4
		// 정수 입력 : 7
		// 프로그램이 종료되었습니다.
		
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			System.out.print("정수 입력 : ");
			int a = sc.nextInt();
			// 종료조건
			if(a == 7) {
				System.out.println("프로그램이 종료되었습니다.");
				break;
			}
		}
				
		

	}

}
