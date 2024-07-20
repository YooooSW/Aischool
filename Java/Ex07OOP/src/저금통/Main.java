package 저금통;

public class Main {

	public static void main(String[] args) {

		// 1) PiggyBank 설계도 사용해서 객체 생성
		// pig
		PiggyBank pig = new PiggyBank(10000,"Steve");
		
		// 2)pig money 를 10000원 으로 초기화
		//pig.money = 10000;	>> 오류가 난다
		//						  (클래스 외부에서 private변수에 접근하려했기 떄문에)			
		
		// 3)pig에 deposit 기능 사용
		// 5000원 입금
		// 매개변수 정수형 데이터 1개
		// 전달인자도 1개
		pig.deposit(5000);
		
		// 4)잔액 확인 했을 때
		pig.showMoney(); // 15000원
		
		// 5)1200원 인출
		pig.withdraw(1200);
		
		// 6)잔액확인
		pig.showMoney(); // 13800원
		
		// 7) getter 사용해서 잔액을 확인
		System.out.println(pig.getMoney());
		
		// 8) setter 사용해서 잔액을 18000원으로 바꿔보자
		pig.setMoney(18000);
		pig.showMoney();
		

	}

}
