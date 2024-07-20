package 이항연산자;

import java.util.Scanner;

public class Ex01산술연산자 {

	public static void main(String[] args) {
		
		// 산술 연산자
		
		// +, -, *, /, %
		// 더하기, 빼기, 곱하기, 몫, 나머지
		
		// 숫자 2개 준비하기(각각 num1, num2라는 변수에 3과 7을
		// 저장 해주자)
		int num1 = 3;
		int num2 = 7;
		
		// 복사 crtl+alt+방향키
		System.out.println(num1 + num2);
		System.out.println(num1 - num2);
		System.out.println(num1 * num2);
		System.out.println(num1 / num2);
		System.out.println(num1 % num2);
		
		// 실습) 변수 num3와 num4에 사용자가 입력한 값이
		// 저장 될 수 있도록 만들어보자
		
		// 그리고나서 num3와 num4의 산술 연산자 들의 결과값을 출력해보자
		// 단, /(몫)연산 결과값이 소수점이 보여지게 만들어보자
		// hint) int / int -- int
		Scanner sc = new Scanner(System.in);
		
//		System.out.print("첫번째 숫자를 입력하세요 >>");
//		int num3 = sc.nextInt();
//		System.out.print("두번째 숫자를 입력하세요 >>");
//		int num4 = sc.nextInt();
		
//		int hap = num3 + num4;
//		int minus = num3 - num4;
//		int multi = num3 * num4;
//		int mok = num3 / num4;
//		double divide = num3 % num4;
		
//		System.out.println("더하기"+hap);
//		System.out.println("빼기"+minus);
//		System.out.println("곱하기"+multi);
//		System.out.println("몫"+mok);
//		System.out.println("나머지"+divide);
		
		
		// + 문자열 연산이 가능하다
		// 10 + 5 + 6
		System.out.println(7 + 3 + "7");
		// 1) 107
		System.out.println(7 + "3" + 7);
		// 2) 737
		System.out.println("7" + 3 + 7);
		// 3) 710 ---> 737
		// 숫자 + 문자열
		// 앞(뒤)에 숫자 데이터가 자동으로 문자열로 형변환 된다!
		
		// 더하기 결과값 : 10
		System.out.println("더하기 결과값 :" + (num1+num2));
		
		// ()로 식을 감싸주는 이유는 먼저 연산이 이루어 질 수 있도록
		// 하기 위함.

		
		
		
	}

}
