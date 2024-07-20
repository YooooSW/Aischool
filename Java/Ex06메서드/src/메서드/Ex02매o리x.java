package 메서드;

public class Ex02매o리x {

	public static void main(String[] args) {

		// 매개변수는 있고, 리턴타입(void)이 없는 메서드
		sumPrint(5,6,52);
		// System.out.println(sumPrint(5,6,52));
		
		// System.out.println(System.out.println(2+6+52));
		// 출력문을 출력하려고하면 error가 발생한다
		
	}// main 밖

	public static void sumPrint(int a, int b, int c) {
		
		// void는 return이라는 키워드가 필수가 아니거든요.
		System.out.println(a+b+c);
		// void : 기능 자체를 결과값으로 돌려주는 경우
	
	}
	
	
	
	
}
