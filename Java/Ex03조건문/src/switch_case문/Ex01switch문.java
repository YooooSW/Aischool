package switch_case문;

public class Ex01switch문 {

	public static void main(String[] args) {
		
		
//		switch(변수) {
//		case 값1 :
//			변수랑 값1이 같으면 실행시킬 코드
//			break;
//			- switch-case문을 빠져나가는 키워드
//			실행코드를 동작하고나서 빠져나가고 싶으면 반드시
//			break키워드를 작성해줘야한다.
//		}
		
		// 짝수/홀수를 구분
		int num = 5;
		// () : 변수, 식(결과값)
		switch(num%2) {
		case 1:
			System.out.println("홀수입니다.");
			break;
		case 0:
			System.out.println("짝수입니다.");
			break;
		}
		// () : 변수, 식, 값
		
		switch(num) {
		case 1:
			System.out.println("1입니다.");
			break;
		case 2:
			System.out.println("2입니다.");
			break;
		case 5:
			System.out.println("5입니다.");
			break;
		default:
			// 모든 경우를 만족하지 않았을 때에
			// 실행시킬 코드를 작성 (else 비슷한 역할)
		}
		
		

	}

}
