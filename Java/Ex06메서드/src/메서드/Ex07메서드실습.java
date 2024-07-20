package 메서드;

public class Ex07메서드실습 {

	public static void main(String[] args) {

		int num1 = 10;
		int num2 = 10;
		int result = largerNumber(num1, num2);
		System.out.println("큰 수 확인 : " + result);
	
	}

	
	public static int largerNumber(int num1, int num2) {
		
		// num1, num2 누가 더 큰수 인지를 판단
		if(num1 > num2) {
			return num1;
		}else if(num2 > num1) {
			return num2;
		}else if(num1 == num2) {
			return 0;
		}else {
			return 0;
		}
		
		
		
		
	}
	
	
}
