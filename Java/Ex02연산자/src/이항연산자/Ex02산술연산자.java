package 이항연산자;

import java.util.Scanner;

public class Ex02산술연산자 {

	public static void main(String[] args) {
		
		// 1) 입력하는 도구 가져오기
		
		// 2) 사용자로 부터 숫자 한개를 입력받아
		
		// 3) num에 저장
		Scanner sc = new Scanner(System.in);
		
		// 4) 백의자리 숫자 구하기
		// 5) 십의자리 숫자 구하기
		// 6) 일의자리 숫자 구하기
		
		System.out.print("세자리 숫자를 입력하세요 >>");
		int num = sc.nextInt();
		
		System.out.println("백의자리 :"+ num / 100);
		System.out.println("십의자리 :"+ (num / 10) % 10);
		System.out.println("일의자리 :"+ num % 10);
		
		
		
	}

}
