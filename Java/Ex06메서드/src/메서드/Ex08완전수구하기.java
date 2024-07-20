package 메서드;

public class Ex08완전수구하기 {

	public static void main(String[] args) {

		// isDivisor() : 약수인지 아닌지를 알려주는 메서드
		int num1 = 10;
		int num2 = 2;
		boolean divisor = isDivisor(num1, num2);
		
		System.out.println(divisor);
		// is ~ : 리턴타입이 boolean
		
		
		// 2) getDivisor(x) : 약수의 종류를 보여주는 메서드 
		
		getDivisor(10);
		getDivisor(16);
		getDivisor(24);
		
		int num = 10;
		int result = getSumOfDivisors(num);
		
		System.out.println(num+"의 약수의 합 : "+result);
		
		getDivisor(num);
		
		// 완전수란 무엇인가
		// : 나를 제외한 약수들의 합이 나와 같은 것
		// ex) 6 : 1 2 3 
		// 6 == 6 : 완전수가 맞습니다.
		// ex) 28 : 1 2 4 7 14 28
		// 28 == 28 : 완전수가 맞습니다.
		// ex) 10 : 1 2 5 10
		// 8 == 10 : 완전수가 아닙니다.
		
		
		// 4) isPerfectNumber
		int num3 = 36;
		boolean result2 = isPerfectNumber(num3);
		System.out.println(result2); // true
		// 5) getPerfectNumber
		
		int start = 2;
		int end = 1000;
		getPerfectNumber(start, end);
		
		// - 출력하는 기능을 가지고 있다 (void)
		// - 전달인자 2개 (int) ---> 매개변수 2개(int)
		
	}
	
	// 1) isDivisor() : 약수인지 아닌지 확인해주는 메서드
	// num2가 num1의 약수인지 아닌지 
	// == num1을 num2로 나누었을 때 나누어 떨어지는지
	public static boolean isDivisor(int num1, int num2) {
		
//		if(num1 % num2 == 0) {
//			return true;
//		}else {
//			return false;
//		}
		return num1%num2 == 0 ? true:false;
	}
	
	// 2) getDivisor(x) : 약수의 종류를 보여주는 메서드 
	public static void getDivisor(int num) {
		
		// 만약에 4
		for(int i = 1; i <= num; i++) {
			if(isDivisor(num, i)) {
				// num을 i로 나누었을 때 나누어 떨어지는지
				// i가 num의 약수인지 아닌지
				// isDivisor(num1, num2)
				// num2가 num1의 약수인지 아닌지
				// num1을 num2로 나우었을 때 나누어 떨어지는지
				System.out.print(i+" ");
			}
		}System.out.println();
		
	}
	
	// 3) getSumOfDivisors(x) : 약수들의 합을 결과값으로 돌려주는 메서드
	public static int getSumOfDivisors(int num) {
		
		// num의 약수들의 합
		int sum = 0; 
		
		for(int i = 1; i <= num/2; i++) {
			if(isDivisor(num, i)) {
				sum += i;
			}
		}
		// 시간복잡도
		return sum+num;
	}
	
	// 4) isPerfectNumber
	// 나를 제외한 약수의 합이 나와같은지 확인해서 true/false를 돌려주자
	// getSumOfDivisors(6) ---> 12
	// get(28) ---> 56
	// get(10) ---> 18
	public static boolean isPerfectNumber(int num3) {
		
		boolean result = false;
		// 완전수라면 result를 true로 바꿔주자
		// getSumOfDivisors(num3) - num3 == num3
		if(getSumOfDivisors(num3)-num3 == num3) {
			result = true;
		}
		
		return result;
		
	}
	
	// 5) getPerfectNumber
	
	// - isPerfectNumber를 사용하면 
	public static void getPerfectNumber(int start, int end) {
		
		// start에서 end 사이에 있는 숫자들 중 완전수만 출력
		System.out.print(start+"~"+end+"까지의 완전수 : ");
		for(int i = start; i <= end; i++) {
			if(isPerfectNumber(i)) {
				System.out.print(i+" ");
			}
		}
		
		
//		if(isPerfectNumber(3)) {
//			System.out.print(3+" ");
//		}
//		if(isPerfectNumber(4)) {
//			System.out.print(4+" ");
//		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
