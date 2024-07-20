package 메서드;

public class Ex06메서드실습 {

	public static void main(String[] args) {

		int num1 = 5;
		int num2 = 2;
		char op = '%'; // -, +, *, /
		
		System.out.println(cal(num1, num2, op));
		// op에 -가 있으면 num1과 num2를 빼기를 한 결과값
		
	}
	// cal 메서드를 만들어보자!
	// op에 따라서 돌려주는 결과값이 달라야 한다!
	
	public static int cal(int num1, int num2, char op) {
		// 전달인자 매개변수의 이름을 같은 이름을 주는 편
		// 나중에 어떤 데이터를 사용하는지 구분하기 위해서 
		int result = 0;
		
		if(op == '-') {
			//return num1 - num2;
			result =  num1 - num2;
		}else if(op == '+') {
			//return num1 + num2;
			result = num1 + num2;
		}else if(op =='*') {
			//return num1 * num2;
			result = num1 * num2;
		}else if(op == '/') {
			//return num1 / num2;
			result = num1/num2;
		}
		
		return result;
		// else문으로 닫아주는 작업
		// 모든 경우에 대해 돌아가는 결과값이 생길 수 있도록 
	}
	
	
	
	
	
	
	
	
	

}
