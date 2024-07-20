import java.util.Scanner;

public class Ex00자판기프로그램 {

	public static void main(String[] args) {
		
		// 자판기 프로그램
		
		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		
		// 2) 출력문
		System.out.println("금액을 입력하세요");
		int money = sc.nextInt(); // 내가 현재 가지고 있는 금액
		
		// 3) 메뉴판
		System.out.println("메뉴를고르세요.");
		System.out.print("1.아우터(700원) 2.이구동성(1000원) 3.에그몽(500원) >> ");
		int menu = sc.nextInt();
		// 입력받은 메뉴 번호가 뭔지 판단이 이루어 져야한다.
		
		int a = 700;
		int b = 1000;
		int c = 500;
		
		int price = 0;
		
		switch(menu){
		case 1:
			price = a;
			break;
		case 2:
			price = b;
			break;
		case 3:
			price = c;
			break;
		}
		
		if(money < price) {
			System.out.println("돈이 부족해요 ㅠㅠ");
			System.out.println("잔돈 : " + money + "원");
			return;
		}
		
		int change = money - price;
		System.out.println("잔돈 : " + money + "원");
		
		int chon = change / 1000;
		change %= 1000;
		int obaek = change / 500;
		change %= 500;
		int baek = change / 100; 
		
		System.out.println("천원:" + chon + "개");
		System.out.println("오백원:" + obaek + "개");
		System.out.println("백원:" + baek + "개");

	}

}
