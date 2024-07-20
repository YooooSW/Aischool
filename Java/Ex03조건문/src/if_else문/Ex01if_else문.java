package if_else문;

import java.util.Scanner;

public class Ex01if_else문 {

	public static void main(String[] args) {
		
		// if-else문
		// : 조건식의 참/거짓에 대한 실행코드를 작성해보자
		
		// if(조건식){조건식이 true일 경우 동작하는 실행코드}
		// else{조건식이 false일 경우 동작하는 실행코드}
		
		// crtl + a : 전체선택
		// crtl + shift + f : 코드정렬
		
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		// 2) 출력문으로 정수 입력 : 보여주기
		// 단, 오른쪽에 입력받을 수 있게 만들려면? println vs print
		System.out.print("정수 입력 :");
		// 3) 사용자로부터 숫자 입력받기
		// 입력받은 숫자는 num이라는 변수에 담아주기(저장)
		int num = sc.nextInt();
		// 4) num이 홀수인지 짝수인지 판별해서 짝수라면 "짝수입니다"
		// 	  홀수라면 "홀수입니다"를 출력하기
		// -  2로 나누었을 때 나머지가 0인지 아닌지    홀수일때 조건 num % 2 == 1
		if(num % 2 == 0) {
			System.out.println("짝수입니다.");
		}else {
			System.out.println("홀수입니다.");
		}
		
		
		
		

	}

}
