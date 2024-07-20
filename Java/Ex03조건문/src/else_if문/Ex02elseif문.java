package else_if문;

import java.util.Scanner;

public class Ex02elseif문 {

	public static void main(String[] args) {
		
		// 학점계산 프로그램 만들기
		
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		System.out.print("점수 입력 : ");
		// 2) totalScore 선언하기
		int totalScore;
		// 3) 사용자가 입력한 값으로 totalScore 초기화하기
		totalScore = sc.nextInt();
		// 4) totalScore값을 판단하기
		// 90점이상 - A
		// 80점이상 - B
		// 70점이상 - C
		// 70점미만 - D
		// 조건이 4가지이므로 else if 문을 사용해서 문제를 
	    // 해결해 보자!
		if(totalScore >= 90) {
			System.out.println("A학점입니다.");
		}else if(totalScore >= 80){
			System.out.println("B학점입니다.");
		}else if(totalScore >=70) {
			System.out.println("C학점입니다.");
		}else {
			System.out.println("D학점입니다.");
		}

	}

}
