package 월급계산프로그램;

public class Main {

	public static void main(String[] args) {
		
		RegularEmployee regular = new RegularEmployee("SMHRD001", "홍길동", 4000, 400);
		TempEmployee temp = new TempEmployee("SMHRD001", "박문수", 3000);
		PartTimeEmployee partTime = new PartTimeEmployee("SMHRD002", "홍길동", 10, 10);
		System.out.println(regular.print(regular.getMoneyPay()));
		
		System.out.println(temp.print(temp.getMoneyPay()));
		
		System.out.println(partTime.print(partTime.getMoneyPay()));
		
	}

}
