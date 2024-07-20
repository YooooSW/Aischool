import java.util.Scanner;

public class Ex00자판기프로그램풀이 {

	public static void main(String[] args) {
		
		// 자판기 프로그램
		
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		
		// 2) 출력문
		System.out.println("금액을 입력하세요");
		int price = sc.nextInt(); // 내가 현재 가지고 있는 금액
		
		// 3) 메뉴판
		System.out.println("메뉴를고르세요.");
		System.out.print("1.아우터(700원) 2.이구동성(1000원) 3.에그몽(500원) >> ");
		int select = sc.nextInt();
		// 입력받은 메뉴 번호가 뭔지 판단이 이루어 져야한다.
		
		if (select == 1) {

			if (price < 700) {
				System.out.println("돈이부족해요 ㅠㅠ");
			} else {
				price = price - 700;
			}

		} else if (select == 2) {

			if (price < 1000) {
				System.out.println("돈이 부족해요 ㅠㅠ");
			} else {
				price = price - 1000;
				// price -= 1000
			}

		} else {
			if (price < 500) {
				System.out.println("돈이 부족해요 ㅠㅠ");
			} else {
				price -= 500;
			}

		}
		// 잔돈이 price에 재할당 되어있는 상태

		System.out.println("잔돈 : " + price + "원");
		System.out.print("천원 : "+ price/1000 + "개,");
		System.out.print("오백원 : " + price%1000/500+"개,");
		System.out.print("백원 : " + price%500/100+"개");


	}

}
