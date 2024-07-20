package 삼항연산자;

import java.util.Scanner;

public class Ex01삼항연산자 {

	public static void main(String[] args) {
		
		// 사용자로부터 정수를 하나 입력받아서 홀수인지 짝수인지 판별
		
		// 1) 입력하는 도구 가져오기
		Scanner sc = new Scanner(System.in);
		// 2) 출력문
		System.out.print("숫자를 입력하세요 >>");
		// 3) 사용자한테 숫자하나 입력받기 (num)
		int num = sc.nextInt();
		// 4) num이라는 숫자가 홀수/짝수인지 삼항연산자를
		// 사용해서 결과값을 출력해보자
		System.out.println(num+"는(은)"+(num%2==1?"홀수":"짝수")+"입니다.");
		//
		String result = num%2 == 1?"홀수":"짝수";
		System.out.println(result);
		
//		if (num % 2 == 0) {
//		System.out.println(num+"은 짝수입니다.");
//		}
//		else {
//		System.out.println(num+"은 홀수입니다.");
//		}

	}

}
