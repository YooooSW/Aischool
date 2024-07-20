package while문;

import java.util.Scanner;

public class Ex06예제 {

	public static void main(String[] args) {
		
		// 현재 몸무게와 목표 몸무게를 입력 받고 주차 별
		// 감량 몸무게를 입력 받으세요
		
		// 목표 몸무게를 달성하면 축하한다는 문구를 출력하고
		// 입력을 멈추세요
		
		// 종료조건 : 현재 몸무게가 목표 몸무게 보다
		//         작거나 같으면 종료!
		
		// 현제 몸무게에서 감량몸무게를 뺀게
		// 나의 현제 몸무게가 된다!
		
		Scanner sc = new Scanner(System.in);
		System.out.print("현재몸무게 : ");
		int weight = sc.nextInt();
		
		System.out.print("목표몸무게 : ");
		int target = sc.nextInt();
		
		int week = 1;
		
		while(true) {
			System.out.print(week+"주차 감량 몸무게 : ");
			int loss = sc.nextInt();
			
			week++;
			
			weight = weight - loss;
			
			if(weight<=target) {
				System.out.print(weight+"kg 달성!! 축하합니다!!");
				break;
			}
			
			
				
			}
			
		}
		
		
		
		
	}

