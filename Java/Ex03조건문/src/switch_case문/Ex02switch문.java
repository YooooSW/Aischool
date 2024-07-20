package switch_case문;

import java.util.Scanner;

public class Ex02switch문 {

	public static void main(String[] args) {
		
		// 사용자로부터 월을 입력받아서
		// 해당 월의 계절이 어떤 계절인지 출력해주는 프로그램
		
		// console
		// 1 ~ 12월 중 숫자 하나를 입력하세요 >> 5
		// 현재 계절은 봄입니다.
		
		// 단, switch case문을 사용해서 결과값을 출력하기
		
		Scanner sc = new Scanner(System.in);
		System.out.print("1 ~ 12월 중 숫자 하나를 입력하세요 >> ");
		int num = sc.nextInt();
		
		switch(num) {
		case 12:
		case 1:
		case 2:
			System.out.println("현재 계절은 겨울입니다");
			break;
		case 3:
		case 4:
		case 5:
			System.out.println("현재 계절은 봄입니다");
			break;
		case 6:
		case 7:
		case 8:
			System.out.println("현재 계절은 여름입니다");
			break;
		case 9:
		case 10:
		case 11:
			System.out.println("현재 계절은 가을입니다");
			break;
		}
		
		switch(num/3) {
		case 1:
			System.out.println("현재 계절은 봄입니다.");
			break;
		case 2:
			System.out.println("현재 계절은 여름입니다.");
			break;
		case 3:
			System.out.println("현재 계절은 가을입니다.");
			break;
		default:
			System.out.println("현재 계절은 겨울입니다.");
			break;
		}
	}

}
