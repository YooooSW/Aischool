package else_if문;

import java.util.Scanner;

public class Ex03elseif문 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int sub1, sub2, sub3, sub4, sub5;
		
		System.out.print("소프트웨어 설계 : ");
		sub1 = sc.nextInt();
		System.out.print("소프트웨어 개발 : ");
		sub2 = sc.nextInt();
		System.out.print("데이터베이스 구축 : ");
		sub3 = sc.nextInt();
		System.out.print("프로그래밍 언어 활용 : ");
		sub4 = sc.nextInt();
		System.out.print("정보시스템 구축 관리 : ");
		sub5 = sc.nextInt();
		int totalScore = sub1+sub2+sub3+sub4+sub5;
		
		if(sub1 < 8|| sub2 < 8|| sub3 < 8|| sub4 < 8|| sub5 < 8) {
			System.out.println("불합격입니다.");
		}else if(totalScore >= 60) {
			System.out.println("합격입니다.");
		}else{
			System.out.println("불합격입니다.");
		}

	}

}







