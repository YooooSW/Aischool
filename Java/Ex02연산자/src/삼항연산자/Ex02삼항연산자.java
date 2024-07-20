package 삼항연산자;

import java.util.Scanner;

public class Ex02삼항연산자 {

	public static void main(String[] args) {
		
		// 1) 입력하는 도구가 필요하다
		Scanner sc = new Scanner(System.in);
		// 2) 출력문
		// 3) 입력문 - num1에다가 저장
		// 4) 출력문
		// 5) 입력문 - num2에다가 저장
		System.out.println("첫 번째 정수 입력:");
		int num1 = sc.nextInt();
		System.out.println("두 번째 정수 입력:");
		int num2 = sc.nextInt();
		// 6) 두 수의 차가 결과값으로 나와야한다
		// 큰숫자 - 작은숫자
		// 어떤 수가 더 큰 숫자인지 비교
		int result = (num1 > num2) ? (num1 - num2) : (num2 - num1);
		System.out.println(result);
		
		
		
	}

}
