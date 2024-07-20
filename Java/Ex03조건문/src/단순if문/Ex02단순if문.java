package 단순if문;

import java.util.Scanner;

public class Ex02단순if문 {

	public static void main(String[] args) {
		
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		// 2) int num이라는 변수 선언하기
		int num;
		System.out.print("숫자입력 : ");
		// 3) 사용자가 입력한 값으로 num을 초기화 하기
		num = sc.nextInt();
		// 4) 입력받은 num이 3의 배수, 5의 배수 '둘 다'
		// 만족 한다면, "3과 5의 배수입니다." 출력하기
		// - 두 조건이 다 만족하는지를 확인하려면 && 연산자
		if(num%3==0 && num%5==0) {
			System.out.println("3과 5의 배수입니다!");
		}
		
		
	}

}
