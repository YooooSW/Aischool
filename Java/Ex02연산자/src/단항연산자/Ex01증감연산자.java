package 단항연산자;

public class Ex01증감연산자 {

	public static void main(String[] args) {
		
		// ++, -- (앞/뒤)
		
		int num = 3;
		
		System.out.println(num++); // 결과값 3
		// 증감연산자는 뒤에 붙어 있으면
		// 먼저 실행코드(출력문)가 동작하고 나서 연산을 진행한다
		// 콘솔에서는 볼 수 없지만 num = 4 인상태이다.
		System.out.println(--num); // 결과값 3 num = 3인상태
		// 증감 연산자는 앞에 붙어 있으면
		// 먼저 연산이 진행되고나서 실행코드가 동작한다
		
		

	}

}
