package while문;

import java.util.Scanner;

public class Ex08예제 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.print("첫 번째 정수를 입력하세요 >> ");
			int num1 = sc.nextInt();
			System.out.print("두 번째 정수를 입력하세요 >> ");
			int num2 = sc.nextInt();
			System.out.print("[1]더하기 [2]빼기 >> ");
			int select1 = sc.nextInt();

			int plus = num1 + num2;
			int minus = num1 - num2;

			if (select1 == 1) {
				System.out.println("더하기 연산 결과는 " + plus + "입니다.");
				break;

			} else {
				System.out.println("빼기 연산 결과는 " + minus + "입니다.");
			}
			System.out.print("다시 실행하시겠습니까? (Y/N) >> ");
			String select2 = sc.next();
			if (select2.equals("N") || select2.equals("n")) {
				System.out.println("종료합니다.");
				break;
			}
		}
	}
}
