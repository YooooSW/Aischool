package if_else문;

import java.util.Scanner;

public class Ex02if_else문 {

	public static void main(String[] args) {
		
	      // 마트 계산대 프로그램
	      // 만원짜리 추석선물 세트를 구입했을 때 지불해야하는
	      // 금액을 계산해 보아요
	      // 단, 11개 이상 구매시에는 10% 할인이 됩니다
	      
	      // 1) 입력하는 기능 가져오기
	      Scanner sc = new Scanner(System.in);
	      // 입력하는 기능을 자연쌤이 맨날 첫번째 코드로 작성한 이유!
	      // - 15행에 있는 코드가 실행되기 이전까지는 sc를 사용할 수가 없다!
	      // 프로그램에서 사용하는 기능들을 import하는 코드는 항상
	      // 맨 상단으로 올려놓고 코드작성을 진행하자!
	      
	      
	      // 2) 출려문이 보이는데 입력은 아래에서 받음
	      // println vs print
	      System.out.println("사려는 상품의 갯수를 입력하세요");
	      // 3) 상품의 개수 입력받아서 cnt라는 변수에 저장하기
	      int cnt = sc.nextInt();
	      // 4) 상품의 개수가 11개 이상인지 판단하기
	      // 11개 이상이면, 10% 할인해주기
	      // 아니면 원가로 계산하기
	      // 소수점의 결과값이 나오지 않도록 만들어주기!
	      
	      // 가격이 저장될 수있는 변수
	      int price = 10000;
	      
	      if(cnt >= 11) {
	         // 10% 할인
	         price = (int)(price * cnt * 0.9);
	      }else {
	         // 원가
	         price = price * cnt;
	         // price *= cnt
	      }
	      
	      System.out.println("가격은"+price+"입니다.");

		
//		Scanner sc = new Scanner(System.in);
//		System.out.println("사려는 상품 갯수를 입력하세요");
//		int num = sc.nextInt();
//		
//		int money = 10000;
//		int price = 1;
//		
//		price = num*money;
//		
//		if(num >= 11) {
//			price = price - (price/10);
//			
//		}System.out.println("가격은" + price + "원 입니다.");
		
		// 노가다코드
//		if(num>=11) {
//			System.out.println("가격은"+(int)((num*money)-((num*money)*0.1))+"원 입니다.");
//		}else {
//			System.out.println("가격은"+num*money+"원 입니다.");
//		}
//		
		
		

	}

}
