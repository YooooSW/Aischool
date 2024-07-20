package while문;

import java.util.Scanner;

public class Ex03while문 {

	public static void main(String[] args) {
		
		// 숫자를 입력 받아 누적하는 프로그램을 작성하세요.
		// 단, -1을 입력한 경우 프로그램 종료
		
		// 종료조건 : 사용자가 -1을 입력하면 반복 종료
		// -1을 입력해도 누적결과는 보여진다. 그리고 나서 종료
		
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		
		// 2)
		// - sum이 while문 안에 초기화 되어있으면
		// 계속해서 0으로 초기화 되기 때문에 반복 안에서
		// 영향을 받지 않도록 while문을 밖으로 빼준다.
		int sum = 0;
		while(true) {
			System.out.print("숫자 입력 : ");
			int num = sc.nextInt();
			// 사용자가 입력한 숫자들의 총합
			sum += num;
			System.out.println("누적결과 : "+sum);
			
			// 3) 종료조건
			// 사용자가 입력한 값(num) == -1
			if(num==-1) {
				System.out.println("종료되었습니다.");
				break;
			}
		}

	}

}
