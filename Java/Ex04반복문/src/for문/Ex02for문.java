package for문;

import java.util.Scanner;

public class Ex02for문 {

	public static void main(String[] args) {
		
		// 1) 1~100까지의 수 중에서 3의 배수만 출력하세요
		for(int i=1; i<=100; i++) {
			if(i%3 == 0) {
				System.out.print(i + " ");
			}
		}
		
		System.out.println();
		// 2) 1~100까지의 수 중에서 3의 배수이면서 5의 배수를 출력하세요
		for(int i=1; i<=100; i++) {
			if(i%3 == 0 && i%5 == 0) {
				System.out.print(i + " ");
			}
			// if문은 실행코드가 한 줄이면 중괄호 생략이 가능
		}
		
		System.out.println();
		// 3) 한 개의 자연수를 입력받아 그 수의 배수를
		//    차례대로 10개 출력하는 프로그램을 작성하시오
		
		// console
		// 자연수를 입력하세요 : 5
		// 5 10 15 20 25 30 35 40 45 50
		Scanner sc = new Scanner(System.in);
		System.out.print("자연수를 입력하세요 : ");
		int num = sc.nextInt();
		
		for(int i=1; i<=10; i++) {
			System.out.print(num * i + " ");
		}

	}

}
